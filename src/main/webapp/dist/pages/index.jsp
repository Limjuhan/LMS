<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!doctype html>
<html lang="en">
<!--begin::Head-->
<head>
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>개인정보</title>
<!--begin::Primary Meta Tags-->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="title" content="AdminLTE v4 | Dashboard" />
<meta name="author" content="ColorlibHQ" />
<meta name="description"
	content="AdminLTE is a Free Bootstrap 5 Admin Dashboard, 30 example pages using Vanilla JS." />
<meta name="keywords"
	content="bootstrap 5, bootstrap, bootstrap 5 admin dashboard, bootstrap 5 dashboard, bootstrap 5 charts, bootstrap 5 calendar, bootstrap 5 datepicker, bootstrap 5 tables, bootstrap 5 datatable, vanilla js datatable, colorlibhq, colorlibhq dashboard, colorlibhq admin dashboard" />
<!--end::Primary Meta Tags-->
<!--begin::Fonts-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/@fontsource/source-sans-3@5.0.12/index.css"
	integrity="sha256-tXJfXfp6Ewt1ilPzLDtQnJV4hclT9XuaZUKyUvmyr+Q="
	crossorigin="anonymous" />
<!--end::Fonts-->
<!--begin::Third Party Plugin(OverlayScrollbars)-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/overlayscrollbars@2.10.1/styles/overlayscrollbars.min.css"
	integrity="sha256-tZHrRjVqNSRyWg2wbppGnT833E/Ys0DHWGwT04GiqQg="
	crossorigin="anonymous" />
<!--end::Third Party Plugin(OverlayScrollbars)-->
<!--begin::Third Party Plugin(Bootstrap Icons)-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"
	integrity="sha256-9kPW/n5nn53j4WMRYAxe9c1rCY96Oogo/MKSVdKzPmI="
	crossorigin="anonymous" />
<!--end::Third Party Plugin(Bootstrap Icons)-->
<!--begin::Required Plugin(AdminLTE)-->
<link rel="stylesheet" href="../../dist/css/adminlte.css" />
<!--end::Required Plugin(AdminLTE)-->
<!-- apexcharts -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/apexcharts@3.37.1/dist/apexcharts.css"
	integrity="sha256-4MX+61mt9NVvvuPjUWdUdyfZfxSB1/Rf9WtqRHgG5S0="
	crossorigin="anonymous" />
<!-- jsvectormap -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/jsvectormap@1.5.3/dist/css/jsvectormap.min.css"
	integrity="sha256-+uGLJmmTKOqBr+2E6KDYs/NRsHxSkONXFHUL0fy2O/4="
	crossorigin="anonymous" />
<style>
ul.timeline::before {
	content: none !important;
}
</style>
</head>
<!--end::Head-->
<!--begin::Body-->
<body class="layout-fixed sidebar-expand-lg bg-body-tertiary">
	<!--begin::App Wrapper-->
	<div class="app-wrapper">
		<!--begin::Header-->
		<nav class="app-header navbar navbar-expand bg-body">
			<!--begin::Container-->
			<div class="container-fluid">
				<!--begin::Start Navbar Links-->
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link"
						data-lte-toggle="sidebar" href="#" role="button"> <i
							class="bi bi-list"></i>
					</a></li>
					<li class="nav-item d-none d-md-block"><a href="#"
						class="nav-link">Home</a></li>
					<li class="nav-item d-none d-md-block"><a href="#"
						class="nav-link">Contact</a></li>
				</ul>
				<!--end::Start Navbar Links-->
				<!--begin::End Navbar Links-->
				<ul class="navbar-nav ms-auto">
					<!--begin::Navbar Search-->
					<li class="nav-item"><a class="nav-link"
						data-widget="navbar-search" href="#" role="button"> <i
							class="bi bi-search"></i>
					</a></li>
					<!--end::Navbar Search-->
					<!--begin::Messages Dropdown Menu-->
					<li class="nav-item dropdown"><a class="nav-link"
						data-bs-toggle="dropdown" href="#"> <i class="bi bi-chat-text"></i>
							<span class="navbar-badge badge text-bg-danger">3</span>
					</a>
						<div class="dropdown-menu dropdown-menu-lg dropdown-menu-end">
							<a href="#" class="dropdown-item"> <!--begin::Message-->
								<div class="d-flex">
									<div class="flex-shrink-0">
										<img src="../../dist/assets/img/user1-128x128.jpg"
											alt="User Avatar" class="img-size-50 rounded-circle me-3" />
									</div>
									<div class="flex-grow-1">
										<h3 class="dropdown-item-title">
											Brad Diesel <span class="float-end fs-7 text-danger"><i
												class="bi bi-star-fill"></i></span>
										</h3>
										<p class="fs-7">Call me whenever you can...</p>
										<p class="fs-7 text-secondary">
											<i class="bi bi-clock-fill me-1"></i> 4 Hours Ago
										</p>
									</div>
								</div> <!--end::Message-->
							</a>
							<div class="dropdown-divider"></div>
							<a href="#" class="dropdown-item"> <!--begin::Message-->
								<div class="d-flex">
									<div class="flex-shrink-0">
										<img src="../../dist/assets/img/user8-128x128.jpg"
											alt="User Avatar" class="img-size-50 rounded-circle me-3" />
									</div>
									<div class="flex-grow-1">
										<h3 class="dropdown-item-title">
											John Pierce <span class="float-end fs-7 text-secondary">
												<i class="bi bi-star-fill"></i>
											</span>
										</h3>
										<p class="fs-7">I got your message bro</p>
										<p class="fs-7 text-secondary">
											<i class="bi bi-clock-fill me-1"></i> 4 Hours Ago
										</p>
									</div>
								</div> <!--end::Message-->
							</a>
							<div class="dropdown-divider"></div>
							<a href="#" class="dropdown-item"> <!--begin::Message-->
								<div class="d-flex">
									<div class="flex-shrink-0">
										<img src="../../dist/assets/img/user3-128x128.jpg"
											alt="User Avatar" class="img-size-50 rounded-circle me-3" />
									</div>
									<div class="flex-grow-1">
										<h3 class="dropdown-item-title">
											Nora Silvester <span class="float-end fs-7 text-warning">
												<i class="bi bi-star-fill"></i>
											</span>
										</h3>
										<p class="fs-7">The subject goes here</p>
										<p class="fs-7 text-secondary">
											<i class="bi bi-clock-fill me-1"></i> 4 Hours Ago
										</p>
									</div>
								</div> <!--end::Message-->
							</a>
							<div class="dropdown-divider"></div>
							<a href="#" class="dropdown-item dropdown-footer">See All
								Messages</a>
						</div></li>
					<!--end::Messages Dropdown Menu-->
					<!--begin::Notifications Dropdown Menu-->
					<li class="nav-item dropdown"><a class="nav-link"
						data-bs-toggle="dropdown" href="#"> <i class="bi bi-bell-fill"></i>
							<span class="navbar-badge badge text-bg-warning">15</span>
					</a>
						<div class="dropdown-menu dropdown-menu-lg dropdown-menu-end">
							<span class="dropdown-item dropdown-header">15
								Notifications</span>
							<div class="dropdown-divider"></div>
							<a href="#" class="dropdown-item"> <i
								class="bi bi-envelope me-2"></i> 4 new messages <span
								class="float-end text-secondary fs-7">3 mins</span>
							</a>
							<div class="dropdown-divider"></div>
							<a href="#" class="dropdown-item"> <i
								class="bi bi-people-fill me-2"></i> 8 friend requests <span
								class="float-end text-secondary fs-7">12 hours</span>
							</a>
							<div class="dropdown-divider"></div>
							<a href="#" class="dropdown-item"> <i
								class="bi bi-file-earmark-fill me-2"></i> 3 new reports <span
								class="float-end text-secondary fs-7">2 days</span>
							</a>
							<div class="dropdown-divider"></div>
							<a href="#" class="dropdown-item dropdown-footer"> See All
								Notifications </a>
						</div></li>
					<!--end::Notifications Dropdown Menu-->
					<!--begin::Fullscreen Toggle-->
					<li class="nav-item"><a class="nav-link" href="#"
						data-lte-toggle="fullscreen"> <i data-lte-icon="maximize"
							class="bi bi-arrows-fullscreen"></i> <i data-lte-icon="minimize"
							class="bi bi-fullscreen-exit" style="display: none"></i>
					</a></li>
					<!--end::Fullscreen Toggle-->
					<!--begin::User Menu Dropdown-->
					<li class="nav-item dropdown user-menu"><a href="#"
						class="nav-link dropdown-toggle" data-bs-toggle="dropdown"> <img
							src="../../dist/assets/img/user2-160x160.jpg"
							class="user-image rounded-circle shadow" alt="User Image" />
							<span class="d-none d-md-inline">DONGGONYOO</span>
					</a>
						<ul class="dropdown-menu dropdown-menu-lg dropdown-menu-end">
							<!--begin::User Image-->
							<li class="user-header text-bg-primary"><img
								src="../../dist/assets/img/user2-160x160.jpg"
								class="rounded-circle shadow" alt="User Image" />
								<p>
									Alexander Pierce - Web Developer <small>Member since
										Nov. 2023</small>
								</p></li>
							<!--end::User Image-->
							<!--begin::Menu Body-->
							<li class="user-body">
								<!--begin::Row-->
								<div class="row">
									<div class="col-4 text-center">
										<a href="#">Followers</a>
									</div>
									<div class="col-4 text-center">
										<a href="#">Sales</a>
									</div>
									<div class="col-4 text-center">
										<a href="#">Friends</a>
									</div>
								</div> <!--end::Row-->
							</li>
							<!--end::Menu Body-->
							<!--begin::Menu Footer-->
							<li class="user-footer"><a href="#"
								class="btn btn-default btn-flat">Profile</a> <a href="#"
								class="btn btn-default btn-flat float-end">Sign out</a></li>
							<!--end::Menu Footer-->
						</ul></li>
					<!--end::User Menu Dropdown-->
				</ul>
				<!--end::End Navbar Links-->
			</div>
			<!--end::Container-->
		</nav>
		<!--end::Header-->
		<!--begin::Sidebar-->
		<aside class="app-sidebar bg-body-secondary shadow"
			data-bs-theme="dark">
			<!--begin::Sidebar Brand-->
			<div class="sidebar-brand">
				<!--begin::Brand Link-->
				<a href="./index.jsp" class="brand-link"> <!--begin::Brand Image-->
					<img src="../../dist/assets/img/AdminLTELogo.png"
					class="brand-image opacity-75 shadow" /> <!--end::Brand Image-->
					<!--begin::Brand Text--> <span class="brand-text fw-light">LDB
						학사관리시스템</span> <!--end::Brand Text-->
				</a>
				<!--end::Brand Link-->
			</div>
			<!--end::Sidebar Brand-->
			<!--begin::Sidebar Wrapper-->
			<div class="sidebar-wrapper">
				<nav class="mt-2">
					<!--begin::Sidebar Menu-->
					<ul class="nav sidebar-menu flex-column" data-lte-toggle="treeview"
						role="menu" data-accordion="false">
						<li class="nav-item menu-open"><a href="#"
							class="nav-link active"> <i
								class="nav-icon bi bi-speedometer"></i>
								<p>
									MyPage <i class="nav-arrow bi bi-chevron-right"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="./index.jsp"
									class="nav-link active"> <i class="nav-icon bi bi-circle"></i>
										<p>개인정보</p>
								</a></li>
								<li class="nav-item"><a href="./index2.jsp"
									class="nav-link"> <i class="nav-icon bi bi-circle"></i>
										<p>성적확인</p>
								</a></li>
								<li class="nav-item"><a href="./index3.jsp"
									class="nav-link"> <i class="nav-icon bi bi-circle"></i>
										<p>시간표조회</p>
								</a></li>
							</ul></li>
						<li class="nav-item"><a href="#" class="nav-link"> <i
								class="nav-icon bi bi-box-seam-fill"></i>
								<p>
									학습지원 <i class="nav-arrow bi bi-chevron-right"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="./widgets/small-box.html"
									class="nav-link"> <i class="nav-icon bi bi-circle"></i>
										<p>수강신청</p>
								</a></li>
								<li class="nav-item"><a href="./widgets/info-box.html"
									class="nav-link"> <i class="nav-icon bi bi-circle"></i>
										<p>수강신청 현황</p>
								</a></li>
								<li class="nav-item"><a href="./widgets/cards.html"
									class="nav-link"> <i class="nav-icon bi bi-circle"></i>
										<p>미정</p>
								</a></li>
							</ul></li>
						<li class="nav-item"><a href="#" class="nav-link"> <i
								class="nav-icon bi bi-clipboard-fill"></i>
								<p>
									교수지원
									<!-- <span class="nav-badge badge text-bg-secondary me-3">6</span> -->
									<i class="nav-arrow bi bi-chevron-right"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a
									href="./layout/unfixed-sidebar.html" class="nav-link"> <i
										class="nav-icon bi bi-circle"></i>
										<p>강의등록</p>
								</a></li>
								<li class="nav-item"><a href="./layout/fixed-sidebar.html"
									class="nav-link"> <i class="nav-icon bi bi-circle"></i>
										<p>강의관리</p>
								</a></li>
								<li class="nav-item"><a
									href="./layout/layout-custom-area.html" class="nav-link"> <i
										class="nav-icon bi bi-circle"></i>
										<p>성적관리</p>
								</a></li>
								<li class="nav-item"><a href="./layout/sidebar-mini.html"
									class="nav-link"> <i class="nav-icon bi bi-circle"></i>
										<p>출석관리</p>
								</a></li>
							</ul></li>
						<li class="nav-item"><a href="./notice_board.jsp"
							class="nav-link"> <i class="nav-icon bi bi-tree-fill"></i>
								<p>공지사항</p>
						</a></li>
						<li class="nav-item"><a href="./question_board.jsp"
							class="nav-link"> <i class="nav-icon bi bi-pencil-square"></i>
								<p>문의게시판</p>
						</a></li>
					</ul>
					<!--end::Sidebar Menu-->
				</nav>
			</div>
			<!--end::Sidebar Wrapper-->
		</aside>
		<!--end::Sidebar-->
		<!--begin::App Main-->
		<!--begin::App Main-->
		<main class="app-main">
			<!--begin::App Content Header-->
			<div class="app-content-header">
				<div class="container-fluid">
					<div class="row">
						<div class="col-sm-6">
							<h3 class="mb-0">LDB 학사관리시스템</h3>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-end">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active" aria-current="page">Dashboard</li>
							</ol>
						</div>
					</div>
				</div>
			</div>
			<!--end::App Content Header-->

			<!--begin::App Content-->
			<div class="app-content">
				<div class="container-fluid">
					<!--begin::Row 1 - Welcome & Quick Actions-->
					<div class="row">
						<!-- Welcome Card -->
						<div class="col-md-6">
							<div class="card card-primary card-outline">
								<div class="card-header">
									<h5 class="card-title">
										환영합니다,
										<%-- ${user.name} --%>
										<strong>임주한(포켓몬마스터)</strong>님!
									</h5>
								</div>
								<div class="card-body">
									<p>
										<strong>역할:</strong> ${user.role}
									</p>
									<p>
										<strong>현재 학기:</strong> 2025년 1학기
									</p>
									<p>LDB 학사관리시스템에서 수강신청, 성적확인, 공지사항 등을 편리하게 이용하세요.</p>
								</div>
							</div>
						</div>
						<!-- Quick Actions -->
						<div class="col-md-6">
							<div class="card card-info card-outline">
								<div class="card-header">
									<h5 class="card-title">빠른 액세스</h5>
								</div>
								<div class="card-body">
									<div class="d-flex flex-wrap">
										<a href="course_registration.jsp" class="btn btn-primary m-1">수강신청</a>
										<a href="grades.jsp" class="btn btn-success m-1">성적확인</a> 
										<a href="timetable.jsp" class="btn btn-warning m-1">시간표조회</a> 
										<a href="notice_board.jsp" class="btn btn-info m-1">공지사항</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--end::Row 1-->

					<!--begin::Row 2 - Notices & Schedule-->
					<div class="row">
						<!-- Recent Notices -->
						<div class="col-md-6">
							<div class="card card-warning card-outline">
								<div class="card-header">
									<h5 class="card-title">최신 공지사항</h5>
									<div class="card-tools">
										<a href="notice_board.jsp" class="btn btn-tool">전체보기</a>
									</div>
								</div>
								<div class="card-body">
									<ul class="list-group">
										<c:forEach var="notice" items="${recentNotices}" begin="0"
											end="4">
											<li class="list-group-item"><a
												href="notice_detail.jsp?id=${notice.id}">${fn:escapeXml(notice.title)}</a>
												<span class="float-end text-muted"><fmt:formatDate
														value="${notice.createdDate}" pattern="yyyy-MM-dd" /></span></li>
										</c:forEach>
									</ul>
								</div>
							</div>
						</div>
						<!-- Academic Schedule -->
						<div class="col-md-6">
							<div class="card card-success card-outline">
								<div class="card-header">
									<h5 class="card-title">학사 일정</h5>
								</div>
								<div class="card-body">
									<ul class="timeline timeline-inverse">
										<li><i class="bi bi-calendar-event bg-primary"></i>
											<div class="timeline-item">
												<span class="time"><i class="bi bi-clock"></i>
													2025-03-01</span>
												<h3 class="timeline-header">2025년 1학기 개강</h3>
											</div></li>
										<li><i class="bi bi-calendar-event bg-warning"></i>
											<div class="timeline-item">
												<span class="time"><i class="bi bi-clock"></i>
													2025-03-10 ~ 2025-03-15</span>
												<h3 class="timeline-header">수강신청 기간</h3>
											</div></li>
										<li><i class="bi bi-calendar-event bg-danger"></i>
											<div class="timeline-item">
												<span class="time"><i class="bi bi-clock"></i>
													2025-06-20 ~ 2025-06-30</span>
												<h3 class="timeline-header">기말고사</h3>
											</div></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!--end::Row 2-->

					<!--begin::Row 3 - Recent Activity-->
					<div class="row">
						<div class="col-12">
							<div class="card card-secondary card-outline">
								<div class="card-header">
									<h5 class="card-title">최근 활동</h5>
								</div>
								<div class="card-body">
									<table class="table table-bordered">
										<thead>
											<tr>
												<th>활동</th>
												<th>날짜</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="activity" items="${recentActivities}"
												begin="0" end="4">
												<tr>
													<td>${fn:escapeXml(activity.description)}</td>
													<td><fmt:formatDate value="${activity.date}"
															pattern="yyyy-MM-dd HH:mm" /></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<!--end::Row 3-->
				</div>
			</div>
			<!--end::App Content-->
		</main>
		<!--end::App Main-->
		<!--begin::Footer-->
		<footer class="app-footer">
			<!--begin::To the end-->
			<!-- <div class="float-end d-none d-sm-inline">Anything you want</div> -->
			<!--end::To the end-->
			<!--begin::Copyright-->
			<strong> Copyright &copy;2025-05-01&nbsp; <a href="#"
				class="text-decoration-none">LDB대학교</a>.
			</strong> All rights reserved.
			<!--end::Copyright-->
		</footer>
		<!--end::Footer-->
	</div>
	<!--end::App Wrapper-->
	<!--begin::Script-->
	<!--begin::Third Party Plugin(OverlayScrollbars)-->
	<script
		src="https://cdn.jsdelivr.net/npm/overlayscrollbars@2.10.1/browser/overlayscrollbars.browser.es6.min.js"
		integrity="sha256-dghWARbRe2eLlIJ56wNB+b760ywulqK3DzZYEpsg2fQ="
		crossorigin="anonymous"></script>
	<!--end::Third Party Plugin(OverlayScrollbars)-->
	<!--begin::Required Plugin(popperjs for Bootstrap 5)-->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
		integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
		crossorigin="anonymous"></script>
	<!--end::Required Plugin(popperjs for Bootstrap 5)-->
	<!--begin::Required Plugin(Bootstrap 5)-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
		integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
		crossorigin="anonymous"></script>
	<!--end::Required Plugin(Bootstrap 5)-->
	<!--begin::Required Plugin(AdminLTE)-->
	<script src="../../dist/js/adminlte.js"></script>
	<!--end::Required Plugin(AdminLTE)-->
	<!--begin::OverlayScrollbars Configure-->
	<script>
      const SELECTOR_SIDEBAR_WRAPPER = '.sidebar-wrapper';
      const Default = {
        scrollbarTheme: 'os-theme-light',
        scrollbarAutoHide: 'leave',
        scrollbarClickScroll: true,
      };
      document.addEventListener('DOMContentLoaded', function () {
        const sidebarWrapper = document.querySelector(SELECTOR_SIDEBAR_WRAPPER);
        if (sidebarWrapper && typeof OverlayScrollbarsGlobal?.OverlayScrollbars !== 'undefined') {
          OverlayScrollbarsGlobal.OverlayScrollbars(sidebarWrapper, {
            scrollbars: {
              theme: Default.scrollbarTheme,
              autoHide: Default.scrollbarAutoHide,
              clickScroll: Default.scrollbarClickScroll,
            },
          });
        }
      });
    </script>

</body>
<!--end::Body-->
</html>
