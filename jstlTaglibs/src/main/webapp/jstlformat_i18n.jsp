<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Internationalization</title>
</head>
<body>
Language support:
<a href="?locale=en_IN">English_India</a>|
<a href="?locale=bg_BG">Bulgarian</a>|
<a href="?locale=fr_FR">French</a><br/><br/>
<hr/>
<fmt:setLocale value="${param.locale }"/>
<fmt:bundle basename="i18n/website">
<p><fmt:message key="label.hello"/>&nbsp;kumar,
<p><fmt:message key="label.who"/>
<p><fmt:message key="label.help"/>
</fmt:bundle>

<p>Locale: ${param.locale }
</body>
</html>