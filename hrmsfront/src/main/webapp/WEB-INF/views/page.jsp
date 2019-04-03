<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="vendor" value="/resources/vendor" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>HRMS - ${title}</title>
<meta name="description" content="Ela Admin - HTML5 Admin Template">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
<link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">

<link rel="stylesheet" href="${vendor}/css/normalize.min.css">
<link rel="stylesheet" href="${vendor}/css/bootstrap.min.css">
<link rel="stylesheet" href="${vendor}/css/font-awesome.min.css">
<link rel="stylesheet" href="${vendor}/css/themify-icons.css">
<link rel="stylesheet" href="${vendor}/css/pe-icon-7-stroke.min.css">
<link rel="stylesheet" href="${vendor}/css/flag-icon.min.css">
<link rel="stylesheet" href="${css}/cs-skin-elastic.css">
<link rel="stylesheet" href="${css}/style.css">
<!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
<link href="${vendor}/css/chartist.min.css" rel="stylesheet">
<link href="${vendor}/css/jqvmap.min.css" rel="stylesheet">

<link href="${vendor}/css/weather-icons.css" rel="stylesheet" />
<link href="${vendor}/css/fullcalendar.min.css" rel="stylesheet" />

<style>
#weatherWidget .currentDesc {
	color: #ffffff !important;
}

.traffic-chart {
	min-height: 335px;
}

#flotPie1 {
	height: 150px;
}

#flotPie1 td {
	padding: 3px;
}

#flotPie1 table {
	top: 20px !important;
	right: -10px !important;
}

.chart-container {
	display: table;
	min-width: 270px;
	text-align: left;
	padding-top: 10px;
	padding-bottom: 10px;
}

#flotLine5 {
	height: 105px;
}

#flotBarChart {
	height: 150px;
}

#cellPaiChart {
	height: 160px;
}
</style>
<script>
	window.menu = '${title}';
</script>
</head>

<body>
	<div class="wrapper">
		<!-- Left Panel -->
		<%@include file="./shared/sidebar.jsp"%>
		<!-- /#left-panel -->
		<!-- Right Panel -->
		<div id="right-panel" class="right-panel">
			<!-- Header-->
			<%@include file="./shared/topnav.jsp"%>
			<!-- /#header -->
			<!-- Content -->
			<div class="content">
				<!-- Animated -->
				<c:if test="${userClickHome == true }">
					<%@include file="./home.jsp"%>
				</c:if>

				<c:if test="${userClickCompanyStructure == true }">
					<%@include file="./admin/company-structure.jsp"%>
				</c:if>

				<c:if test="${userClickJobDetailsSetup == true }">
					<%@include file="./admin/job-details-setup.jsp"%>
				</c:if>

				<c:if test="${userClickQualificationSetup == true }">
					<%@include file="./admin/qualification-setup.jsp"%>
				</c:if>

				<c:if test="${userClickProjectClientSetup == true }">
					<%@include file="./admin/project-client-setup.jsp"%>
				</c:if>

				<c:if test="${userClickOvertimeAdministration == true }">
					<%@include file="./admin/overtime-administration.jsp"%>
				</c:if>

				<c:if test="${userClickEmployeeCustomFields == true }">
					<%@include file="./admin/employee-custom-fields.jsp"%>
				</c:if>

				<c:if test="${userClickCompanyLoans == true }">
					<%@include file="./admin/company-loans.jsp"%>
				</c:if>

				<c:if test="${userClickEmployees == true }">
					<%@include file="./employee/employees.jsp"%>
				</c:if>

				<c:if test="${userClickTravelRequests == true }">
					<%@include file="./employee/travel-requests.jsp"%>
				</c:if>

				<c:if test="${userClickMonitorAttendance == true }">
					<%@include file="./employee/monitor-attendance.jsp"%>
				</c:if>

				<c:if test="${userClickSettings == true }">
					<%@include file="./system/settings.jsp"%>
				</c:if>

				<c:if test="${userClickSystemUsers == true }">
					<%@include file="./system/users.jsp"%>
				</c:if>

				<c:if test="${userClickManageModules == true }">
					<%@include file="./system/manage-modules.jsp"%>
				</c:if>

				<c:if test="${userClickManagePermission == true }">
					<%@include file="./system/manage-permission.jsp"%>
				</c:if>

				<c:if test="${userClickManageMetadata == true }">
					<%@include file="./system/manage-metadata.jsp"%>
				</c:if>

				<c:if test="${userClickSystemData == true }">
					<%@include file="./system/data.jsp"%>
				</c:if>

				<c:if test="${userClickPayrollSalary == true }">
					<%@include file="./payroll/salary.jsp"%>
				</c:if>

				<c:if test="${userClickPayrollReports == true }">
					<%@include file="./payroll/reports.jsp"%>
				</c:if>

				<c:if test="${userClickPersonalDashboard == true }">
					<%@include file="./personal/dashboard.jsp"%>
				</c:if>

				<c:if test="${userClickBasicInformation == true }">
					<%@include file="./personal/basic-information.jsp"%>
				</c:if>

				<c:if test="${userClickQualification == true }">
					<%@include file="./personal/qualification.jsp"%>
				</c:if>

				<c:if test="${userClickDependents == true }">
					<%@include file="./personal/dependents.jsp"%>
				</c:if>

				<c:if test="${userClickEmergencyContacts == true }">
					<%@include file="./personal/emergency-contacts.jsp"%>
				</c:if>

				<c:if test="${userClickManagementProject == true }">
					<%@include file="./management/time-managment-projects.jsp"%>
				</c:if>

				<c:if test="${userClickManagementAttedance == true }">
					<%@include file="./management/time-management-attendance.jsp"%>
				</c:if>

				<c:if test="${userClickTimeSheets == true }">
					<%@include file="./management/time-sheets.jsp"%>
				</c:if>

				<c:if test="${userClickOvertimeRequests == true }">
					<%@include file="./management/overtime-requrests.jsp"%>
				</c:if>

				<c:if test="${userClickStaffDirectory == true }">
					<%@include file="./company/staff-directory.jsp"%>
				</c:if>

				<c:if test="${userClickTravel == true }">
					<%@include file="./travel-management/travel.jsp"%>
				</c:if>

				<c:if test="${userClickFinanceSalary == true }">
					<%@include file="./finance/finance-salary.jsp"%>
				</c:if>

				<c:if test="${userClickFinanceLoans == true }">
					<%@include file="./finance/finance-loans.jsp"%>
				</c:if>

				<c:if test="${userClickReportsUser == true }">
					<%@include file="./user-reports/user-reports.jsp"%>
				</c:if>
				<!-- .animated -->
			</div>
			<!-- /.content -->
			<div class="clearfix"></div>
			<!-- Footer -->
			<%@include file="./shared/footer.jsp"%>
			<!-- /.site-footer -->
		</div>
		<!-- /#right-panel -->
	</div>

	<!-- Scripts -->
	<script src="${vendor}/js/jquery.min.js"></script>
	<script src="${vendor}/js/popper.min.js"></script>
	<script src="${vendor}/js/bootstrap.min.js"></script>
	<script src="${vendor}/js/jquery.matchHeight.min.js"></script>
	<script src="${js}/main.js"></script>

	<!--  Chart js -->
	<script src="${vendor}/js/Chart.bundle.min.js"></script>

	<!--Chartist Chart-->
	<script src="${vendor}/js/chartist.min.js"></script>
	<script src="${vendor}/js/chartist-plugin-legend.min.js"></script>

	<script src="${vendor}/js/jquery.flot.min.js"></script>
	<script src="${vendor}/js/jquery.flot.pie.min.js"></script>
	<script src="${vendor}/js/jquery.flot.spline.min.js"></script>

	<script src="${vendor}/js/jquery.simpleWeather.min.js"></script>
	<script src="${js}/init/weather-init.js"></script>

	<script src="${vendor}/js/moment.min.js"></script>
	<script src="${vendor}/js/fullcalendar.min.js"></script>
	<!-- script src="${js}/fullcalendar-init.js"></script-->
	<script src="${js}/myapp.js"></script>

</body>
</html>

