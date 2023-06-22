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
    <title>Elektroniczna książka płatowca</title>
</head>
<body>

<table>
    <tr>

        <th>TYP</th>
        <th>NAZWA</th>
        <th>ZNAKI</th>


    </tr>
<c:forEach items="${gliderList}" var="glider">
        <tr>

            <td>${glider.type}</td>
            <td>${glider.name}</td>
            <td>${glider.regNumber}</td>




            <td><a href="<c:url value='/glider/select?gliderId=${glider.id}'/>">wybierz</a></td>

        </tr>
    </c:forEach>
</table>


</body>
</html>
