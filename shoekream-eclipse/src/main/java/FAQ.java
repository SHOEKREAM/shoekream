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

@WebServlet("/faq.do")
public class FAQ  extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");

		
		resp.setContentType("application/json;");
		
		String host   = "jdbc:mariadb://cm4ng.iptime.org:3307/shoekream?useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC";
		String userid = "user";
		String passwd = "!!User11@@";
			
		PrintWriter out = resp.getWriter();
		
		try(Connection conn =  DriverManager.getConnection(host, userid, passwd);
				Statement stmt = conn.createStatement()) 
		{
			String q = "SELECT * FROM faq";
	
			ResultSet result = stmt.executeQuery(q);
			
	
			JSONObject data = new JSONObject();
			JSONArray array = new JSONArray();
			
			while(result.next())
			{
				JSONObject object = new JSONObject();
				//object.put("id", result.getString("id"));
				//object.put("brand", result.getString("brand"));
				object.put("question", result.getString("qnote"));
				object.put("answer", result.getString("anote"));

				array.add(object);				
			}
			
			
			data.put("result", "OK");
			data.put("data", array);			
			out.print(data.toJSONString());

		} catch(Exception e) {
			e.printStackTrace();
			JSONObject object = new JSONObject();
			object.put("result", "FAIL");
			
			out.print(object.toJSONString());
		}
	}

}
