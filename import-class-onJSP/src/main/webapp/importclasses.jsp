<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>importing...</title>
</head>
<body>
<%@ page import="java.util.Date,UserDefinedClasses.User" %>
<%out.print(new Date());
out.print("<br/>");
out.print(new User().name());
%>
<%="<br/>" %>
<%= new Date()%>

</body>
</html>