<%--
  Created by IntelliJ IDEA.
  User: marcin
  Date: 17.06.2023
  Time: 20:43
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

<h3>DODAJ SZYBOWIECk</h3>

<form:form method="post" modelAttribute="glider">

  <div>Model/ typ : <form:input path="type"/><form:errors path="type" cssClass="error"/></div>
  <div>Nazwa: <form:input path="name"/><form:errors path="name" cssClass="error"/></div>
  <div>Numer Seryjny: <form:input path="serialNumber"/><form:errors path="serialNumber" cssClass="error"/></div>
  <div>Numer Seryjny: <form:input path="regNumber"/><form:errors path="regNumber" cssClass="error"/></div>
  <div>Numer Seryjny: <form:input path="yearOfBulid" type="number" min="1900"/><form:errors path="serialNumber" cssClass="error"/></div>
  <div>Numer Seryjny: <form:input path="initTotalFlightTime" type="number"/><form:errors path="initTotalFlightTime" cssClass="error"/></div>
  <div>Numer Seryjny: <form:input path="initTotalCycles" type="number"/><form:errors path="initTotalCycles" cssClass="error"/></div>

  <input type="submit" value="DODAJ">
</form:form>

</body>
</html>
