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


      <!-- DataTales Example -->
      <div class="card shadow mb-4">
        <div class="card-header py-3">
          <h6 class="m-0 font-weight-bold text-primary">Lista lotów</h6>
        </div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
              <tr>

                <th>Data lotu</th>
                <th>Czas lotu godz.</th>
                <th>min</th>
                <th>liczba lotów</th>
                <th>Popraw lot</th>
                <th>Usuń lot</th>
              </tr>
              </thead>

              <tbody>
              <c:forEach items="${flights}" var="flight">
                <tr>

                  <td>${flight.dateOfFlight}</td>
                  <td>${flight.flightHrs}</td>
                  <td>${flight.flightMins}</td>
                  <td>${flight.cycles}</td>
                  <td><a href="<c:url value='/flight/edit?id=${flight.id}'/>">Popraw</a></td>
                  <td><a href="<c:url value='/flight/delete?id=${flight.id}'/>" onclick="return confirm('Czy na pewno chcesz usunąc ten lot? Nie będzie można już go odzyskać!')">Usuń</a></td>
                </tr>
                <tr>

                </tr>
              </c:forEach>

              </tbody>
            </table>
          </div>
        </div>
      </div>

    </div>
    <!-- /.container-fluid -->

  </div>
  <!-- End of Main Content -->
          <!-- End of Main Content -->
          <%@ include file="/footer.jsp" %>



