<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.Employee"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update employee</title>
</head>
<body>
	<%
	Employee emp = (Employee) request.getAttribute("employee");
	out.print("<form action=" + request.getContextPath() + "/App_controller" + " method='get'>"
			+ "<input type=\"text\" name=\"page\" value=\"update\" hidden=\"true\">"
			+ "<input type=\"text\" name=\"id\" value=" + emp.getId() + " hidden=\"true\">"
			+ "<input type=\"text\" name=\"ename\" value=" + emp.getEname() +  "><br>"
			+"<input type=\"text\" name=\"department\" value=" + emp.getDepartment() +  "><br>"
			+"<input type=\"text\" name=\"ename\" value=" + emp.getExperience() +  "><br>"
			+"<input type=\"submit\" value=\"update\">");
	%>
	
	

</body>
</html>