<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Catch tag</title>
</head>
<body>
<c:catch var="exception">
<%
int a=10/0;%>
</c:catch>
${exception }<br/>
${exception.message }<br/>
testing...
</body>
</html>