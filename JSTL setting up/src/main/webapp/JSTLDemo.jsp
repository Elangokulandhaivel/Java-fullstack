<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Demo</title>
</head>
<body>

<!-- it set a variable -->
<c:set var="name" value="elango"></c:set>
<c:out value="${name}"></c:out>
${name}
<!-- it remove a variable -->
<c:remove var="name"/>
<!-- param is used to get the value of parameter the pass through get or post methods -->
${param.msg }
</body>
</html>