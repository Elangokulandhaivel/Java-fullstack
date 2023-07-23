 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:import url="/include/header.jsp"></c:import>

<c:param name="title" value="Choose"></c:param>
<c:choose>
	<c:when test="${param.name=='elango' }">
	It's elango
	</c:when>
	<c:when test="${param.name=='ezhil' }">
	It's ehil
	</c:when>
	<c:otherwise>
	It's someone
	</c:otherwise>



</c:choose>
<c:import url="/include/Footer.jsp"></c:import>