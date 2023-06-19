<%--
  Created by IntelliJ IDEA.
  User: marcin
  Date: 19.06.2023
  Time: 22:40
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

<form:form method="post" modelAttribute="part">

  <div>nazwa: <form:input path="name"/><form:errors path="name" cssClass="error"/></div>
  <div>typ: <form:input path="type"/><form:errors path="type" cssClass="error"/></div>
  <div>S/N: <form:input path="serialNumber"/><form:errors path="serialNumber" cssClass="error"/></div>
  <div>do szybowca: <form:select path="glider" items="${gliders}" itemLabel="name" itemValue="id"/><form:errors path="glider.regNumber" cssClass="error"/></div>
  <div>żywotność: <form:input path="maxLifetime" type="number" min="1" placeholder="podaj w godzinach"/><form:errors path="maxLifetime" cssClass="error"/></div>
  <div>cykle: <form:input path="maxCycles" type="number" min="1" placeholder="podaj ilość cykli"/><form:errors path="maxCycles" cssClass="error"/></div>

  <input type="submit" value="Add book">
</form:form>

</body>
</html>
