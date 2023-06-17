<%--
  Created by IntelliJ IDEA.
  User: marcin
  Date: 17.06.2023
  Time: 19:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
  <title>Title</title>
  <link rel="stylesheet" href="<c:url value='/static/css/style.css'/>">
</head>
<body>

<h3>Add book</h3>

<form:form method="post" modelAttribute="flight">

  <div>date: <form:input path="dateOfFlight" type="date"/></div>

  <div>flight hours: <form:input path="flightHrs" type="number" min="0" max="24"/></div>
  <div>flight minutes: <form:input path="flightMins" type="number" min="0" max="59"/></div>
  <div>cycles: <form:input path="cycles" type="number" min="1" max="999"/></div>

  <input type="submit" value="Add book">
</form:form>

</body>
</html>