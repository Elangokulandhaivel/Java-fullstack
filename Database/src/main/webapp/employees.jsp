<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ include file="Include/header.jsp"%>
<%@ page import="java.util.*,model.Employee"%>
<div style="">
	<table border="1">
		<tr>
			<th>Employee name</th>
			<th>Id</th>
			<th>Department</th>
			<th>Experience</th>
		</tr>
<!-- This is done by using jstl tags -->		
		
		<c:forEach items="${employee}" var="emp" >
		<c:url var="updateurl" value="/home">
		<c:param name="page" value="updateemployee"></c:param>
		<c:param name="ename" value="${emp.ename }"></c:param>
		<c:param name="id" value="${emp.id }"></c:param>
		<c:param name="department" value="${emp.department }"></c:param>
		<c:param name="experience" value="${emp.experience }"></c:param>
		</c:url>
		
		<c:url var="deleteurl" value="/DatabaseController">
		<c:param name="page" value="deleteemployee"></c:param>
		<c:param name="id" value="${emp.id }"></c:param>
		</c:url>
		<tr>
		<td>${emp.ename }</td>
		<td>${emp.id }</td>
		<td>${emp.department }</td>
		<td>${emp.experience }</td>
		<td>
		<a href="${updateurl }" >update</a>|
		<a href="${deleteurl }" onclick="if(!confirm('Are you sure to delete employee details?'))return false">delete</a>
		</td>
		
		</tr>
		
		</c:forEach>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
<!-- This is done by using normal methods -->		
		
		
	</table>
</div>
<%@ include file="Include/footer.jsp"%>