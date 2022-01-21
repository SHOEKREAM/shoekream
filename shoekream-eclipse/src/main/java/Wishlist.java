import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import org.json.simple.JSONObject;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/wishlist.do")
public class Wishlist extends HttpServlet 
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");

		
		resp.setContentType("application/json;");
		
		String host   = "jdbc:mariadb://cm4ng.iptime.org:3307/shoekream?useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC";
		String userid = "user";
		String passwd = "!!User11@@";
		
		String iid = req.getParameter("iid");
		String uid = req.getSession().getAttribute("user").toString();

		JSONObject data = new JSONObject();
		
		try(Connection conn =  DriverManager.getConnection(host, userid, passwd);
				Statement stmt = conn.createStatement();
				Statement stmt2 = conn.createStatement()) 
		{
			String q = "INSERT INTO wishlist value("+uid+","+iid+" )";
			stmt.executeUpdate(q);
			
			q = "UPDATE wishlist set i_like_count = i_like_count + 1 WHERE iid = " + iid;
			System.out.print(q);
			stmt2.executeUpdate(q);
			
			
			data.put("result", "OK");
		}catch (Exception e) {
			// TODO: handle exception

			
			data.put("result", "FAIL");
		}
		PrintWriter out = resp.getWriter();
		out.print(data.toJSONString());
	}
}
