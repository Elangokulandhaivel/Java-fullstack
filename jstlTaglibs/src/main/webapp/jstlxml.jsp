<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix = "x" uri = "http://java.sun.com/jsp/jstl/xml" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL XML Tags</title>
</head>
<body>

<c:import url="http://localhost:8080/jstlTaglibs/Users.xml" var="person"></c:import>
<x:parse xml="${person}" var="user"/>
<x:forEach select="$user/Users/user">
<x:if select="gender='female'">
Name: <x:out select="name"/><br/>
Age: <x:out select="age"/><br/>
Gender: <x:out select="gender"/><br/>
<br/>
</x:if>

</x:forEach>
</body>
</html>