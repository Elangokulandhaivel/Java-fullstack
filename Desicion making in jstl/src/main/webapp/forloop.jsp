
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:import url="/include/header.jsp"></c:import>

<c:param name="title" value="For loop"></c:param>
	<c:forEach var="i" begin="0" end="20" step="2">
${i }
	</c:forEach>
	
	
<%
String languages[]={"java","c","c++","python"};
%>
<br/>
<c:forEach items="<%=languages%>" var="language">
${language }<br/>
</c:forEach>
<c:import url="/include/Footer.jsp"></c:import>