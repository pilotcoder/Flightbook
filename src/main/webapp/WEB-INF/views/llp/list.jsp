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
  <a class="nav-link" href=<c:url value='/llp/add'/>>
          <i class="fas fa-fw fa-tachometer-alt"></i>
    <span>Dodaj podzespół</span></a>
</li>

<hr class="sidebar-divider my-0">






<!-- Divider -->
<hr class="sidebar-divider">





<!-- Divider -->
<hr class="sidebar-divider d-none d-md-block">



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
          <h6 class="m-0 font-weight-bold text-primary">Lista podzespołów o ograniczonej żywotności</h6>
        </div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
              <tr>
                <th>Lp.</th>
                <th>Nazwa</th>
                <th>typ</th>
                <th>s/n</th>
                <th>Resurs:</th>
                <th>Data Ważności:</th>
                <th>maksymalny resurs:</th>
              </tr>

              </thead>

              <tbody>


              <c:forEach items="${llplist}" var="llp">
                <tr>
                  <td>${llp.id}</td>
                  <td>${llp.name}</td>
                  <td>${llp.type}</td>
                  <td>${llp.serialNumber}</td>
                  <td>${llp.lifeTimeInYears}</td>
                  <td>${llp.dateOfExpiry}</td>
                  <td> Godz:${llp.maxFlightHrs} min:${llp.maxFlightMins}</td>
                  <td><a href="<c:url value='/llp/edit?id=${llp.id}'/>">Popraw</a></td>
                  <td><a href="<c:url value='/llp/delete?id=${llp.id}'/>" onclick="return confirm('Czy na pewno chcesz usunąc ten podzespół? Nie będzie można go  odzyskać!')">Usuń</a></td>
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

  <%@ include file="/footer.jsp" %>


