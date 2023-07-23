
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:import url="/include/header.jsp"></c:import>

<c:param name="title" value="If Condition"></c:param>

<c:if test="${param.name=='elango' }">
hello ${param.name }<br/>
</c:if>
hello user

<c:import url="/include/Footer.jsp"></c:import>