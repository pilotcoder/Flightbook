<%--
  Created by IntelliJ IDEA.
  User: marcin
  Date: 18.06.2023
  Time: 13:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
  <title>List of Flights on </title>
</head>
<body>




<table>
  <tr>
    <th>Lp.</th>
    <th>Data</th>
    <th>Czas lotu Godzin:</th>
    <th>Minut:</th>
    <th>Ilość lotów:</th>
  </tr>
  <c:forEach items="${flights}" var="flight">
    <tr>
      <td>${flight.id}</td>
      <td>${flight.dateOfFlight}</td>
      <td>${flight.flightHrs}</td>
      <td>${flight.flightMins}</td>
      <td>${flight.cycles}</td>
      <td><a href="<c:url value='/flight/edit?id=${flight.id}'/>">Popraw</a></td>
      <td><a href="<c:url value='/flight/delete?id=${flight.id}'/>" onclick="return confirm('Czy na pewno chcesz usunąc ten lot? Nie będzie można już go odzyskać!')">Usuń</a></td>
    </tr>
  <tr>
    <td><a href="<c:url value='/glider/select?gliderId=${flight.glider.id}'/>">wróć do szybowca</a></td>
  </tr>
  </c:forEach>
</table>

<a href="<c:url value='/flight/add'/>">Dodaj lot</a>
<a href="<c:url value='/flight/search'/>">Wyszukaj loty</a>



</body>
</html>
