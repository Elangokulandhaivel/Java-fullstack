<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home page</title>
</head>
<body>
<%
String username=null,sessionid=null;
if(request.getSession().getAttribute("username")!=null){
	username=request.getSession().getAttribute("username").toString();
	sessionid=request.getSession().getId();
}

%>

username: <%=username %><br/>
sessionid: <%=sessionid %><br/>

<form action="<%=request.getContextPath() %>/Usermanagement" method="get">
<input type="hidden" name="action" value="destroy">
<input type="submit" value="logout">
</form>
</body>
</html>