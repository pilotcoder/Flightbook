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
  <title>List of Life Limited Parts on </title>
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
    <th>maksymalny resurs:</th>
  </tr>
  <c:forEach items="${llplist}" var="llp">
    <tr>
      <td>${llp.id}</td>
      <td>${llp.name}</td>
      <td>${llp.type}</td>
      <td>${llp.serialNumber}</td>
      <td>${llp.lifeTimeInYears}</td>
      <td>${llp.dateOfExpiry}</td>
      <td> Godz:${llp.flightHrs} min:${llp.flightMins}</td>
      <td><a href="<c:url value='/llp/edit?id=${llp.id}'/>">Popraw</a></td>
      <td><a href="<c:url value='/llp/delete?id=${llp.id}'/>" onclick="return confirm('Czy na pewno chcesz usunąc ten lot? Nie będzie można już go odzyskać!')">Usuń</a></td>
    </tr>
  </c:forEach>
</table>

<a href="<c:url value='/llp/add'/>">Dodaj kolejną część</a>


</body>
</html>
