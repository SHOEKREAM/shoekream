import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import org.json.simple.JSONObject;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.websocket.Session;

@WebServlet("/login.do")
public class Login extends HttpServlet
{

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json;");

		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String isSaveId = request.getParameter("isSaveId");
		
		if(isSaveId.equals("true")) 
		{
			Cookie cookie = new Cookie("save_id", id);
			cookie.setMaxAge(60*60*24*7);
			response.addCookie(cookie);
		} else {
			Cookie cookie = new Cookie("save_id", null);
			cookie.setMaxAge(0);
			response.addCookie(cookie);
		}
		
		String host   = "jdbc:mariadb://cm4ng.iptime.org:3307/shoekream?useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC";
		String userid = "user";
		String passwd = "!!User11@@";
		
		try(Connection conn =  DriverManager.getConnection(host,userid,passwd);
			Statement stmt = conn.createStatement()) 
		{

			
			String sql = "select uno,uname from user where uid = '" + id + "' and upw = md5('" + pw + "') and uretire = 'N'";
			ResultSet result = stmt.executeQuery(sql);
			
			JSONObject object = new JSONObject();


			PrintWriter out = response.getWriter();

			String uid = "";
			while(result.next())
			{
				uid = result.getString("uno");
			}
			
			if(!uid.equals(""))
			{				
				object.put("result", "OK");
				HttpSession session = request.getSession();
				session.setAttribute("user", uid);
				
			} else object.put("result", "FAIL");
			
			out.print(object.toJSONString());
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
	}

}
