<%--
  Created by IntelliJ IDEA.
  User: marcin
  Date: 20.06.2023
  Time: 20:03
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

<h3>SZBOWIEC</h3>

<table>
  <tr>

    <th>TYP</th>
    <th>nazwa</th>
    <th>Znaki rej.</th>
    <th>S/N</th>
    <th>rok budowy</th>
    <th>liczba lotów</th>
    <th>nalot ogólny (Minuty)</th>
    <th>nalot ogólny Godz.</th>
    <th>minut</th>


    <th>części</th>

  </tr>

    <tr>

      <td>${glider.type}</td>
      <td>${glider.name}</td>
      <td>${glider.regNumber}</td>
      <td>${glider.serialNumber}</td>
      <td>${glider.yearOfBuild}</td>
      <td>${glider.totalCycles}</td>
      <td>${glider.totalFlightTime}</td>
      <td>${glider.flightHrs}</td>
      <td>${glider.flightMins}</td>
      <td>
        <c:forEach items="${glider.llpList}" var="part">
          ${part.name}
        </c:forEach>
      </td>
    </tr>
  <tr>
    <c:forEach items="${glider.llpList}" var="part">

      <c:choose>
        <c:when test="${part.valid==false}">
          ${part.name}, ${part.type}, ${part.serialNumber} kończy ważność za mniej niż 30 dni!!!
        </c:when>
        <c:when test="${part.maxLifeTimeInFH < glider.totalFlightTime} - 60*100">
          ${part.name}, ${part.type}, ${part.serialNumber} kończy ważność za mniej niź 100 godzin
        </c:when>
        <c:otherwise>
        </c:otherwise>
      </c:choose>
    </c:forEach>
  </tr>
  h3>Wyszukaj loty:</h3>
  <div>
    <p>Wybierz datę:</p>
    <form method="GET" action="/flight/search">
      <label for="flightDate">Data Lotu</label><input id="flightDate" name="flightDate" type="date">
      <input type="submit" value="Search">
    </form>
  <tr>
    <td><a href="<c:url value='/flight/list?gliderId=${glider.id}'/>">loty</a></td>
    <td><a href="<c:url value='/llp/list?gliderId=${glider.id}'/>">części</a></td>

  </tr>








</table>












</body>
</html>