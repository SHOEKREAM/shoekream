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
import jakarta.servlet.http.HttpSession;


@WebServlet("/signup.do")
public class Signup extends HttpServlet {

	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
		String name = request.getParameter("name");
		String id  = request.getParameter("id");
		String pw = request.getParameter("pw");
		String email  = request.getParameter("email");
		String phone  = request.getParameter("ph");
		String address  = request.getParameter("address");
	
		String host   = "jdbc:mariadb://cm4ng.iptime.org:3307/shoekream?useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC";
		String userid = "user";
		String passwd = "!!User11@@";
		
		PrintWriter out = response.getWriter();
		JSONObject object = new JSONObject();
		
		try(Connection conn =  DriverManager.getConnection(host,userid,passwd);
			Statement stmt = conn.createStatement()) 
		{
			
			String sql = "insert into user (uid, uname, upw, uphone, umail, uaddr) values "
					   + "('" + id + "', '" + name + "', md5('" + pw + "'), '" + phone + "', "
					   + "'" + email + "', '" + address + "')";
			stmt.executeUpdate(sql);
			object.put("result", "OK");			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			
			 object.put("result", "FAIL");
		}
		
		out.print(object.toJSONString());
			
		
	}
}
