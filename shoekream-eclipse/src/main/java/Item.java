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

@WebServlet("/item.do")
public class Item extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");

		
		resp.setContentType("application/json;");
		
		String host   = "jdbc:mariadb://cm4ng.iptime.org:3307/shoekream?useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC";
		String userid = "user";
		String passwd = "!!User11@@";
		
		String iid = req.getParameter("iid");

		
		PrintWriter out = resp.getWriter();
		
		if(iid == null) 
		{
			JSONObject tmp = new JSONObject();
			tmp.put("result", "FAIL");
			out.print(tmp.toJSONString());
		} else { 
			
			try(Connection conn =  DriverManager.getConnection(host, userid, passwd);
					Statement stmt = conn.createStatement()) 
			{
				String q = "SELECT * FROM item where iid = " + iid;
		
				ResultSet result = stmt.executeQuery(q);
				
		
				JSONObject data = new JSONObject();
				
				while(result.next())
				{
					JSONObject object = new JSONObject();
					//object.put("id", result.getString("id"));
					//object.put("brand", result.getString("brand"));
					object.put("title", result.getString("i_title"));
					object.put("isCertified", result.getString("is_certified"));
					object.put("size", result.getString("i_size"));
					object.put("price", result.getString("i_price"));
					object.put("model", result.getString("i_model_title"));
					object.put("like_count", result.getInt("i_like_count"));
					object.put("description", result.getString("i_description"));
					object.put("cover", result.getString("i_cover"));
					object.put("quality", result.getString("i_quality_status"));
					String release = result.getString("i_release_date").split(" ")[0];
					object.put("release_date", release);
					object.put("color", result.getString("i_color"));
					object.put("release_price", result.getString("i_release_price"));
					object.put("description", result.getString("i_description"));
					
					data.put("data", object);
					

					
				}
				
				
				data.put("result", "OK");

				
				
				out.print(data.toJSONString());

			} catch(Exception e) {
				e.printStackTrace();
				JSONObject object = new JSONObject();
				object.put("result", "FAIL");
				
				out.print(object.toJSONString());
			}
			
		}
		
	}

}
