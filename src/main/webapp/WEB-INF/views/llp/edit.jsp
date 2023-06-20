<%--
  Created by IntelliJ IDEA.
  User: marcin
  Date: 20.06.2023
  Time: 19:00
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

<form:form method="post" modelAttribute="llp">

  <div>nazwa: <form:input path="name"/><form:errors path="name" cssClass="error"/></div>
  <div>typ: <form:input path="type"/><form:errors path="type" cssClass="error"/></div>
  <div>S/N: <form:input path="serialNumber"/><form:errors path="serialNumber" cssClass="error"/></div>

  <div>żywotność: <form:input path="lifeTimeInYears" type="number" min="1" placeholder="podaj w latach"/><form:errors path="lifeTimeInYears" cssClass="error"/></div>
  <div>resurs: <form:input path="lifeTimeInFH" type="number" min="1" placeholder="podaj w godzinach"/><form:errors path="lifeTimeInFH" cssClass="error"/></div>
  <div>nalot przy zabudowie: </div>
  <div>godziny: <form:input path="flightHrs" type="number" min="0"/></div><form:errors path="flightHrs" cssClass="error"/>
  <div>minuty: <form:input path="flightMins" type="number" min="0" max="59"/></div><form:errors path="flightMins" cssClass="error"/>
  <div>Data zabudowy: <form:input path="dateOfInstall" type="date"/></div><form:errors path="dateOfInstall" cssClass="error"/>
  <form:hidden path="glider.id"/>
  <form:hidden path="id"/>

  <input type="submit" value="Aktualizuj podzespół">
</form:form>

</body>
</html>