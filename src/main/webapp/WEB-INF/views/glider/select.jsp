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



<%@ include file="/header.jsp" %>
<!-- Nav Item - Dashboard -->
<li class="nav-item active">
  <a class="nav-link" href=<c:url value='/flight/list?gliderId=${glider.id}'></c:url>
    <i class="fas fa-fw fa-tachometer-alt"></i>
    <span>Lista lotów</span></a>
</li>

<hr class="sidebar-divider my-0">

<li class="nav-item active">
  <a class="nav-link" href=<c:url value='/llp/list?gliderId=${glider.id}'></c:url>
          <i class="fas fa-fw fa-tachometer-alt"></i>
    <span>Lista podzespołów</span></a>
</li>



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

      <!-- Topbar Search -->


      <!-- Topbar Navbar -->
      <ul class="navbar-nav ml-auto">

        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
        <li class="nav-item dropdown no-arrow d-sm-none">
          <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-search fa-fw"></i>
          </a>

      </ul>

    </nav>
    <!-- End of Topbar -->

    <!-- Begin Page Content -->
    <div class="container-fluid">

      <!-- Page Heading -->
      <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Twój szybowiec:</h1>

      </div>

      <!-- Content Row -->
      <div class="row">


            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">TYP:</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">${glider.type} ${glider.name}</div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-calendar fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Znaki rejestracyjne</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">${glider.regNumber}</div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-calendar fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Numer seryjny</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">${glider.serialNumber}</div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-calendar fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
        <div class="col-xl-3 col-md-6 mb-4">
          <div class="card border-left-primary shadow h-100 py-2">
            <div class="card-body">
              <div class="row no-gutters align-items-center">
                <div class="col mr-2">
                  <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Rok produkcji</div>
                  <div class="h5 mb-0 font-weight-bold text-gray-800">${glider.yearOfBuild}</div>
                </div>
                <div class="col-auto">
                  <i class="fas fa-calendar fa-2x text-gray-300"></i>
                </div>
              </div>
            </div>
          </div>
        </div>



            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Ilość lądowań:</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800">${glider.totalCycles}</div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Aktualny nalot:</div>
                      <div class="row no-gutters align-items-center">
                        <div class="col-auto">
                          <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">${glider.flightHrs} godz. ${glider.flightMins} min.</div>
                        </div>
                        <div class="col">
                          <div class="progress progress-sm mr-2">
                            <div class="progress-bar bg-info" role="progressbar" style="width: ${glider.flightHrs}%" aria-valuenow="${glider.flightHrs}" aria-valuemin="0" aria-valuemax="50"></div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>








        <!-- Pending Requests Card Example -->

      </div>

      <!-- Content Row -->
      <div class="row">

        <!-- Content Column -->
        <div class="col-lg-6 mb-4">


          <!-- Color System -->
          <div class="row">

            <c:forEach items="${glider.llpList}" var="part">

              <c:choose>
                <c:when test="${part.valid==false}">
                  <div class="col-lg-6 mb-4">
                    <div class="card bg-danger text-white shadow">
                      <div class="card-body">
                        UWAGA!!! ${part.name}, ${part.type}, ${part.serialNumber} ważność kończy się ${part.dateOfExpiry}!!!
                        <div class="text-white-50 small">Pamiętaj o wymianie!!!</div>
                      </div>
                    </div>
                  </div>

                </c:when>
                <c:when test="${part.maxLifeTimeInFH < (glider.totalFlightTime + glider.alertIntervalInFH)}">

                  <div class="col-lg-6 mb-4">
                    <div class="card bg-danger text-white shadow">
                      <div class="card-body">
                         UWAGA!!! ${part.name}, ${part.type}, ${part.serialNumber} ważność kończy się przy nalocie ${part.maxFlightHrs} godz. i ${part.maxFlightMins} minut!!!
                            <div class="text-white-50 small">Pamiętaj o wymianie!!!</div>
                      </div>
                    </div>
                  </div>

                </c:when>
                <c:otherwise>
                </c:otherwise>
              </c:choose>
            </c:forEach>



          </div>

          <div class="col-lg-6 mb-4">

            <!-- Illustrations -->
            <div class="card shadow mb-4">
              <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">${glider.type} ${glider.name}</h6>
              </div>
              <div class="card-body">
                <div class="text-center">
                  <img class="img-fluid px-3 px-sm-4 mt-3 mb-4" style="width: 25rem;" src="/theme/img/mucha.jpg" alt="">
                </div>
                <p>Piękności</p>

              </div>
            </div>


            <!-- /.container-fluid -->

          </div>
          <!-- End of Main Content -->
          <%@ include file="/footer.jsp" %>





<%--<html>--%>
<%--<head>--%>
<%--  <title>Title</title>--%>
<%--  <link rel="stylesheet" href="<c:url value='/static/css/style.css'/>">--%>
<%--</head>--%>
<%--<body>--%>

<%--<h3>SZBOWIEC</h3>--%>

<%--<table>--%>
<%--  <tr>--%>

<%--    <th>TYP</th>--%>
<%--    <th>nazwa</th>--%>
<%--    <th>Znaki rej.</th>--%>
<%--    <th>S/N</th>--%>
<%--    <th>rok budowy</th>--%>
<%--    <th>liczba lotów</th>--%>
<%--    <th>nalot ogólny (Minuty)</th>--%>
<%--    <th>nalot ogólny Godz.</th>--%>
<%--    <th>minut</th>--%>


<%--    <th>części</th>--%>

<%--  </tr>--%>

<%--    <tr>--%>

<%--      <td>${glider.type}</td>--%>
<%--      <td>${glider.name}</td>--%>
<%--      <td>${glider.regNumber}</td>--%>
<%--      <td>${glider.serialNumber}</td>--%>
<%--      <td>${glider.yearOfBuild}</td>--%>
<%--      <td>${glider.totalCycles}</td>--%>
<%--      <td>${glider.totalFlightTime}</td>--%>
<%--      <td>${glider.flightHrs}</td>--%>
<%--      <td>${glider.flightMins}</td>--%>
<%--      <td>--%>
<%--        <c:forEach items="${glider.llpList}" var="part">--%>
<%--          ${part.name}--%>
<%--        </c:forEach>--%>
<%--      </td>--%>
<%--    </tr>--%>
<%--  <tr>--%>

<%--  </tr>--%>
<%--  h3>Wyszukaj loty:</h3>--%>
<%--  <div>--%>
<%--    <p>Wybierz datę:</p>--%>
<%--    <form method="GET" action="/flight/search">--%>
<%--      <label for="flightDate">Data Lotu</label><input id="flightDate" name="flightDate" type="date">--%>
<%--      <input type="submit" value="Search">--%>
<%--    </form>--%>
<%--  <tr>--%>
<%--    <td><a href="<c:url value='/flight/list?gliderId=${glider.id}'/>">loty</a></td>--%>
<%--    <td><a href="<c:url value='/llp/list?gliderId=${glider.id}'/>">części</a></td>--%>

<%--  </tr>--%>








<%--</table>--%>












<%--</body>--%>
<%--</html>--%>