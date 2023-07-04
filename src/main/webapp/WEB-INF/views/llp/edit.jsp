<%--
  Created by IntelliJ IDEA.
  User: marcin
  Date: 20.06.2023
  Time: 19:00
  To change this template use File | Settings | File Templates.
--%>


<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>



<%@ include file="/header.jsp" %>
<!-- Nav Item - Dashboard -->
<li class="nav-item active">
  <a class="nav-link" href=<c:url value='/llp/add'></c:url>
          <i class="fas fa-fw fa-tachometer-alt"></i>
    <span>Dodaj podzespół</span></a>
</li>

<hr class="sidebar-divider my-0">






<!-- Divider -->
<hr class="sidebar-divider">

<!-- Heading -->
<div class="sidebar-heading">
  Addons
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
            <h6 class="m-0 font-weight-bold text-primary">Edytuj podzespół:</h6>
          </div>
          <div class="card-body">
            <div class="text-lg-left">
              <form:form method="post" modelAttribute="llp">

                <div>nazwa: <form:input path="name"/><form:errors path="name" /></div>
                <div>typ: <form:input path="type"/><form:errors path="type" /></div>
                <div>S/N: <form:input path="serialNumber"/><form:errors path="serialNumber" /></div>
                <%--  <div>do szybowca: <form:radiobuttons path="glider" items="${gliders}" itemLabel="id" itemValue="id"/><form:errors path="glider" cssClass="error"/></div>--%>
                <div>żywotność: <form:input path="lifeTimeInYears" type="number" min="1" placeholder="podaj w latach"/><form:errors path="lifeTimeInYears" /></div>
                <div>resurs: <form:input path="lifeTimeInFH" type="number" min="1" placeholder="podaj w godzinach"/><form:errors path="lifeTimeInFH" /></div>
                <div>nalot przy zabudowie: </div>
                <div>godziny: <form:input path="flightHrs" type="number" min="0"/></div><form:errors path="flightHrs" />
                <div>minuty: <form:input path="flightMins" type="number" min="0" max="59"/></div><form:errors path="flightMins" />
                <div>Data zabudowy: <form:input path="dateOfInstall" type="date"/></div><form:errors path="dateOfInstall" />
                <form:hidden path="glider.id"/>
                <form:hidden path="id"/>

                <input type="submit" value="Aktualizuj podzespół">
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



