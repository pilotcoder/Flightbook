<%--
  Created by IntelliJ IDEA.
  User: Marcin
  Date: 2023-06-22
  Time: 13:58
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

<h3>Lot zawiera błędne dane:</h3>

<form:form method="post" modelAttribute="flight">

    <div>Data lotu: <form:input path="dateOfFlight" type="date"/></div>
    <div>Czas lotu:</div>

    <div>godziny: <form:input path="flightHrs" type="number" min="0" max="24"/></div>
    <div>minuty: <form:input path="flightMins" type="number" min="0" max="59"/></div>
    <div>Ilość lotów: <form:input path="cycles" type="number" min="1" max="999"/></div>


    <input type="submit" value="Dodaj lot">
</form:form>

</body>
</html>