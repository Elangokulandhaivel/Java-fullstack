
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="/include/header.jsp"></c:import>


<c:param name="title" value="For Tokens"></c:param>
<c:forTokens items="Elango Kulandhaivel Jayamani" delims=" " var="name">
${name}<br />
</c:forTokens>
<c:import url="/include/Footer.jsp"></c:import>