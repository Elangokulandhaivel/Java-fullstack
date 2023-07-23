<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Set property</title>
</head>
<body>
<%
String firstname=request.getParameter("firstname"); 
String lastname=request.getParameter("lastname");
%>
<jsp:useBean id="user" class="beans.User" scope="session"></jsp:useBean>
<jsp:setProperty property="firstname" name="user" value="<%=firstname%>"/>
<jsp:setProperty property="lastname" name="user" value="<%= lastname%>"/>
<jsp:forward page="getprorperty.jsp"></jsp:forward>
</body>
</html>