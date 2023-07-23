<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home page</title>
</head>
<body>
<%@ page import="jakarta.servlet.http.Cookie" %>
<%
String username=null,sessionID=null;
Cookie[] cookies=request.getCookies();
if(cookies!=null){
	for(Cookie cookie:cookies){
		if(cookie.getName().equals("username")){
			username=cookie.getValue();
		}
		if(cookie.getName().equals("JSESSIONID")){
			sessionID=cookie.getValue();
		}
	}
	if(username==null || sessionID==null){
		response.sendRedirect(request.getContextPath()+"/SiteController?action=Login");
	}
}
else{
	response.sendRedirect("logedin.jsp");
	
}
%>


<%= username%><br/>
<%=sessionID %><br/>
Home page

<form action="<%= request.getContextPath()%>/LogoutController" method="get">
<input type="hidden" name="action" value="destroy">
<input type="submit" value="logout">
</form>
</body>
</html>