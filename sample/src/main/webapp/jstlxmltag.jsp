<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix = "c"  uri ="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix = "x" uri = "http://java.sun.com/jsp/jstl/xml" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:import url="/User.xml" var="use" charEncoding="UTF-8"></c:import>
<x:parse  xml="${use}" ></x:parse>

</body>
</html>