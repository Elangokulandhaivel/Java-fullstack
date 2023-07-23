<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="Include/header.jsp"%>
<div class="container">
<div class="row">
<div class="col">
<form action="<%= request.getContextPath()%>/DatabaseController" method="post">
Employee name:<input type="text" name="ename" required>
id:<input type="number" name="id" required>
department: <input type="text" name="department" required>
experience:<input type="text" name="experience" required>
<input type="hidden" name="formtype" value="addemployee">
<input type="submit" value="submit"> 

</form>
</div>
</div>
</div>
<%@ include file="Include/footer.jsp"%>