<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
if(session.getAttribute("user") != null) 
{
    session.invalidate();

    %>
    <script>
        alert('로그아웃되었습니다')
        location.href='/'
    </script>
    <%
} else {
    %>
    <script>
        alert('잘못된 접근입니다')
        window.history.back();
    </script>
    <%
}
    %>