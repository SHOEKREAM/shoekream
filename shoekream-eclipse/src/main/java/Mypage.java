import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/mypage.do")
public class Mypage extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uid = request.getParameter("uid");
		
		String host   = "jdbc:mariadb://cm4ng.iptime.org:3307/shoekream?useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC";
		String userid = "user";
		String passwd = "!!User11@@";
		
		
		try(Connection conn =  DriverManager.getConnection(host, userid, passwd);
				Statement stmt = conn.createStatement()) 
		{
			String q = "SELECT * FROM USER WHERE uno = " + uid;
	
			ResultSet result = stmt.executeQuery(q);
			JSONArray array = new JSONArray();
			JSONObject object = new JSONObject();
			
			result.next();

		} catch(Exception e) {
			e.printStackTrace();
		}
				
		
	}
}
