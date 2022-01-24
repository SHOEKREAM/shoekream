import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/wishlistall.do")
public class WishlistAll extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");

		
		resp.setContentType("application/json;");

		String host   = "jdbc:mariadb://cm4ng.iptime.org:3307/shoekream?useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC";
		String userid = "user";
		String passwd = "!!User11@@";
		
		String iid = req.getParameter("iid");
		String uid = req.getSession().getAttribute("user").toString();

		JSONObject data = new JSONObject();
		JSONArray array = new JSONArray();
		try(Connection conn =  DriverManager.getConnection(host, userid, passwd);
				Statement stmt = conn.createStatement()) 
		{
			//String q = "SELECT ino FROM wishlist WHERE uno = " + uid;
			
			String q = "SELECT * FROM item as a INNER JOIN wishlist as b ON a.iid = b.ino;";
			ResultSet result = stmt.executeQuery(q);
			
			while(result.next())
			{
				JSONObject object = new JSONObject();
				object.put("cover", result.getString("i_cover"));
				object.put("title", result.getString("i_title"));
				object.put("size", result.getString("i_size"));
				object.put("price", result.getString("i_price"));
				object.put("iid", result.getString("iid"));
				object.put("seller", result.getString("uid"));
				array.add(object);
			}
			
			data.put("data", array);
			data.put("result", "OK");
		}catch (Exception e) {
			// TODO: handle exception

			e.printStackTrace();
			data.put("result", "FAIL");
		}
		PrintWriter out = resp.getWriter();
		out.print(data.toJSONString());
	}
	

	
}
