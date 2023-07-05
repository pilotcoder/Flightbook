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



<%@ include file="/header.jsp" %>
<!-- Nav Item - Dashboard -->
<li class="nav-item active">
    <a class="nav-link" href=<c:url value='/flight/add'></c:url>
            <i class="fas fa-fw fa-tachometer-alt"></i>
        <span>Dodaj lot</span></a>
</li>

<hr class="sidebar-divider my-0">

<li class="nav-item active">
    <a class="nav-link" href=<c:url value='/flight/select'></c:url>
            <i class="fas fa-fw fa-tachometer-alt"></i>
        <span>Wyszukaj loty i zapisz do PDF</span></a>
</li>
<hr class="sidebar-divider my-0">

<li class="nav-item active">
    <a class="nav-link" href=<c:url value='/flight/search'></c:url>
            <i class="fas fa-fw fa-tachometer-alt"></i>
        <span>Wyszukaj lot</span></a>
</li>




<!-- Divider -->
<hr class="sidebar-divider">

<!-- Heading -->
<div class="sidebar-heading">

</div>





<!-- Divider -->
<hr class="sidebar-divider d-none d-md-block">

<!-- Sidebar Toggler (Sidebar) -->
<div class="text-center d-none d-md-inline">
    <button class="rounded-circle border-0" id="sidebarToggle"></button>
</div>

</ul>
<!-- End of Sidebar -->

<!-- Content Wrapper -->
<div id="content-wrapper" class="d-flex flex-column">

    <!-- Main Content -->
    <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

            <!-- Sidebar Toggle (Topbar) -->
            <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                <i class="fa fa-bars"></i>
            </button>



        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">


            <div class="col-lg-6 mb-4">

                <!-- Illustrations -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Lot zawiera błędne dane:</h6>
                    </div>
                    <div class="card-body">
                        <div class="text-lg-left">

                            <form:form method="post" modelAttribute="flight">

                                <div>Data lotu: <form:input path="dateOfFlight" type="date"/><form:errors path="dateOfFlight" /></div>
                                <div>Czas lotu:</div>

                                <div>godziny: <form:input path="flightHrs" type="number" min="0" max="24"/><form:errors path="flightHrs" /></div>
                                <div>minuty: <form:input path="flightMins" type="number" min="0" max="59"/><form:errors path="flightMins" /></div>
                                <div>Ilość lotów: <form:input path="cycles" type="number" min="1" max="999"/><form:errors path="cycles" /></div>
                                <form:hidden path="glider.id"/>



                                <input type="submit" value="Dodaj lot">
                            </form:form>

                        </div>

                    </div>
                </div>

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->
        <!-- End of Main Content -->
        <%@ include file="/footer.jsp" %>

