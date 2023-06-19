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
    <th>Nazwa</th>
    <th>typ</th>
    <th>s/n</th>
    <th>Resurs:</th>
    <th>Data Ważności:</th>
    <th>maksymalna liczba startów:</th>
  </tr>
  <c:forEach items="${llplist}" var="llp">
    <tr>
      <td>${llp.id}</td>
      <td>${llp.name}</td>
      <td>${llp.type}</td>
      <td>${llp.serialNumber}</td>
      <td>${llp.maxLifetime}</td>
      <td>${llp.dateOfExpiry}</td>
      <td>${llp.maxCycles}</td>
      <td><a href="<c:url value='/flight/edit?id=${flight.id}'/>">Popraw</a></td>
      <td><a href="<c:url value='/flight/delete?id=${flight.id}'/>" onclick="return confirm('Czy na pewno chcesz usunąc ten lot? Nie będzie można już go odzyskać!')">Usuń</a></td>
    </tr>
  </c:forEach>
</table>

<a href="<c:url value='/flight/add'/>">Dodaj kolejny lot</a>
<a href="<c:url value='/flight/search'/>">Wyszukaj loty</a>
<a href="<c:url value='/flight/all'/>">Lista wszystkich lotów</a>
</body>
</html>
