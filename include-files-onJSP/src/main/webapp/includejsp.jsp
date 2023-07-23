<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- this is for include static content --%>
<%@ include file="file1.txt" %>
<br/>
 <%-- this is for include dynamic content --%>
 <jsp:include page="file2.txt"></jsp:include>
</body>
</html>