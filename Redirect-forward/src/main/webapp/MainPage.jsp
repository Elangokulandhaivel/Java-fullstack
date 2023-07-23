<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main Page</title>
</head>
<body>
Main page
<%--Forward using jsp tag --%>
<%-- <jsp:forward page="Forward.jsp"></jsp:forward>--%>

<%--Forward using request object --%>
<%
//request.getRequestDispatcher("Forward.jsp").forward(request,response);
%>
<%--Redirect using response object --%>
<%
response.sendRedirect("Redirect.jsp");
%>
</body>
</html>