<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en">

<head>


<title>
	<%
	if (request.getParameter("page") == null) {
		out.print("index");
	} else {
		out.print(request.getParameter("page"));
	}
	%>
</title>


<!-- Bootstrap core CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
<!--

TemplateMo 570 Chain App Dev

https://templatemo.com/tm-570-chain-app-dev

-->


</head>

<body>


	<!-- ***** Header Area Start ***** -->
	<div class="container-fluid">
		<div class="row" style="background-color: black; height: 200px">
			<div class="col">
				<h1 style="color: white">HEADER</h1>
			</div>
			<div class="col" style="color: white">
				<a href="<%=request.getContextPath()%>/home?page=home">Home</a>
			</div>
			<div class="col" style="color: white">
				<a href="<%=request.getContextPath()%>/DatabaseController?page=listemployees">List Employees</a>
			</div>
			<div class="col" style="color: white">
				<a href="<%=request.getContextPath()%>/home?page=addemployee">Add Employees</a>
			</div>
		</div>
	</div>
	<!-- header part end -->