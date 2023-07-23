<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="Include/header.jsp" %>

<div class="container">
<div class="row">
<div class="col">
<form action="<%= request.getContextPath()%>/DatabaseController" method="post">
<input type="text" name="ename" value="<%= request.getParameter("ename")%>" required>
<input type="text" name="department" value="<%= request.getParameter("department")%>" required>
<input type="number" name="experience" value="<%= request.getParameter("experience")%>" required>
<input type="number" name="id" value="<%=request.getParameter("id")%>">
<input type="text" name="formtype" value="updateemployee" hidden="true">
<input type="submit" value="update">
</form>
</div>
</div>


</div>

<%@ include file="Include/footer.jsp" %>