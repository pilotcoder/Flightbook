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
    <th>Lp.</th>
    <th>TYP</th>
    <th>nazwa</th>
    <th>liczba lotów</th>
    <th>nalot ogólny</th>
    <th>części</th>

  </tr>

    <tr>
      <td>${glider.id}</td>
      <td>${glider.type}</td>
      <td>${glider.name}</td>
      <td>${glider.totalCycles}</td>
      <td>${glider.totalFlightTime}</td>
      <td>
        <c:forEach items="${glider.llpList}" var="part">
          ${part.name}
        </c:forEach>
      </td>

      <td><a href="<c:url value='/flight/list?gliderId=${glider.id}'/>">loty</a></td>
      <td><a href="<c:url value='/llp/list?gliderId=${glider.id}'/>">części</a></td>


    </tr>

</table>












</body>
</html>