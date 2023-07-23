<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="model.Employee,java.util.List" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employees</title>
</head>
<body>
<% List<Employee> employees=(List<Employee>)request.getAttribute("employeelist");%>
<table>
<tr>
<th>ename</th>
<th>id</th>
<th>department</th>
<th>experience</th>
<th>actions</th>
</tr>

<%for(Employee emp:employees){ %>
<tr>
<td><%=emp.getEname() %></td>
<td><%=emp.getId() %></td>
<td><%=emp.getDepartment() %></td>

<td><%=emp.getExperience()%></td>
<td><form action="<%=request.getContextPath()%>/App_controller?page=update" method="post">
<input type="text" name="ename" value="<%=emp.getEname() %>" hidden="true">
<input type="text" name="id" value="<%=emp.getId() %>" hidden="true">
<input type="text" name="department" value="<%=emp.getDepartment() %>" hidden="true">
<input type="number" name="experience" value="<%=emp.getExperience() %>" hidden="true">

<input type="submit" value="update">

</form></td>
<td><form action="<%=request.getContextPath()%>/App_controller" method="get">
<input type="text" name="page" value="delete" hidden="true">
<input type="text" name="id" value="<%=emp.getId() %>" hidden="true">

<input type="submit" value="delete">

</form></td>
<td></td>
</tr>
<%} %>
</table>
</body>
</html>