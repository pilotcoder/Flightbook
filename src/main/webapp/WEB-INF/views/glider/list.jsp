<%--
  Created by IntelliJ IDEA.
  User: marcin
  Date: 19.06.2023
  Time: 19:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>All books</title>
</head>
<body>

<table>
    <tr>
        <th>Lp.</th>
        <th>TYP</th>
        <th>nazwa</th>
        <th>liczba lotów</th>
        <th>nalot ogólny</th>
        <th>części</th>

    </tr>
<c:forEach items="${gliderList}" var="glider">
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

            <td><a href="<c:url value='/glider/select?gliderId=${glider.id}'/>">wybierz</a></td>

        </tr>
    </c:forEach>
</table>


</body>
</html>
