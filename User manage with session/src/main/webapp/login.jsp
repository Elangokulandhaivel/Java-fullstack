<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login page</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/SiteController" method="post">
		username: <input type="text" name="username"><br />
		<br />password: <input type="password" name="password" /><br />
		<input type="hidden" name="action" value="login">
		<br /> <input type="submit" value="submit">



	</form>
</body>
</html>