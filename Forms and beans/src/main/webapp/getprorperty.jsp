<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get Property</title>
</head>  
<body>
<jsp:useBean id="user" class="beans.User" scope="session"></jsp:useBean>
<jsp:getProperty property="firstname" name="user"/>
<jsp:getProperty property="lastname" name="user"/>
</body>
</html>