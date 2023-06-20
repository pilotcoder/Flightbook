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
<%--            <td>${book.pages}</td>--%>
<%--            <td>${book.category.name}</td>--%>
            <td><a href="<c:url value='/flight/list?gliderId=${glider.id}'/>">loty</a></td>
<%--            <td><a href="<c:url value='/book/remove?id=${book.id}'/>" onclick="return confirm('Are you sure?')">Remove</a></td>--%>
        </tr>
<%--    </c:forEach>--%>
</table>


</body>
</html>
