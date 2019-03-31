<aside id="left-panel" class="left-panel">
	<nav class="navbar navbar-expand-sm navbar-default">
		<div id="main-menu" class="main-menu collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="${contextRoot}/home"><i
						class="menu-icon fa fa-laptop"></i>Dashboard </a></li>
				<li class="menu-title">Admin Details</li>
				<!-- /.menu-title -->
				<li class="menu-item-has-children dropdown"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <i class="menu-icon fa fa-cubes"></i>Admin
				</a>
					<ul class="sub-menu children dropdown-menu">
						<li id="company_structure"><i class="fa fa-building-o"></i><a href="${contextRoot}/admin/company-structure">Company
								Structure</a></li>
						<li id="job_details_setup"><i class="fa fa-columns"></i><a href="${contextRoot}/admin/job-details-setup">Job
								Details Setup</a></li>
						<li id="qualificatin_setup"><i class="fa fa-check-square-o"></i><a
							href="${contextRoot}/admin/qualification-setup">Qualification Setup</a></li>

						<li id="project_client_setup"><i class="fa fa-list-alt"></i><a href="${contextRoot}/admin/project-client-setup">Project/Client
								Setup</a></li>
						<li id="onvertime_administration"><i class="fa fa-align-center"></i><a
							href="${contextRoot}/admin/overtime-administration">Overtime Administration</a></li>
						<li id="employee_custom_fields"><i class="fa fa-sliders"></i><a
							href="${contextRoot}/admin/employee-custom-fields">Employee Custom Fields</a></li>
						<li id="company_loans"><i class="fa fa-shield"></i><a href="${contextRoot}/admin/company-loans">Company
								Loans</a></li>
					</ul></li>
				<li class="menu-item-has-children dropdown"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <i class="menu-icon fa fa-users"></i>Employee
				</a>
					<ul class="sub-menu children dropdown-menu">
						<li id="employees"><i class="fa fa-users"></i><a href="${contextRoot}/employee/employees">Employees</a></li>
						<li id="travel_requests"><i class="fa fa-plane"></i><a href="${contextRoot}/employee/travel-requests">Travel
								Requests</a></li>
						<li id="monitor_attendance"><i class="fa fa-clock-o"></i><a href="${contextRoot}/employee/monitor-attendance">Monitor
								Attendance</a></li>
					</ul></li>
				<li class="menu-item-has-children dropdown"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <i class="menu-icon fa fa-file-text"></i>Reports
				</a>
					<ul class="sub-menu children dropdown-menu">
						<li id="reports_reports"><i class="menu-icon fa fa-file-o"></i><a
							href="${contextRoot}/reports/reports">Reports</a></li>
					</ul></li>

				<li class="menu-title">Systems & Application</li>
				<!-- /.menu-title -->

				<li class="menu-item-has-children dropdown"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <i class="menu-icon fa fa-cogs"></i>System
				</a>
					<ul class="sub-menu children dropdown-menu">
						<li id="system_setting"><i class="menu-icon fa fa-cogs"></i><a
							href="${contextRoot}/system/setting">Setting</a></li>
						<li id="system_users"><i class="menu-icon fa fa-user"></i><a
							href="${contextRoot}/system/users">Users</a></li>
						<li id="manage_modules"><i class="menu-icon fa fa-folder-open"></i><a
							href="${contextRoot}/system/manage-modules">Manage Modules</a></li>
						<li id="manage_permission"><i class="menu-icon fa fa-unlock"></i><a
							href="${contextRoot}/system/manage-permission">Manage Permission</a></li>
						<li id="manage_metadata"><i class="menu-icon fa fa-sort-alpha-asc"></i><a
							href="${contextRoot}/system/manage-metadata">Manage Metadata</a></li>
						<li id="system_data"><i class="menu-icon fa fa-database"></i><a
							href="${contextRoot}/system/data">Data</a></li>
					</ul></li>
				<li class="menu-item-has-children dropdown"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <i class="menu-icon fa fa-money"></i>Payroll
				</a>
					<ul class="sub-menu children dropdown-menu">
						<li id="payroll_salary"><i class="menu-icon fa fa-money"></i><a
							href="${contextRoot}/payroll/salary">Salary</a></li>
						<li id="payroll_reports"><i class="menu-icon fa fa-cogs"></i><a
							href="${contextRoot}/payroll/payroll-reports">Payroll Reports</a></li>
					</ul></li>

				<li class="menu-item-has-children dropdown"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <i class="menu-icon fa fa-male"></i>Personal
						Information
				</a>
					<ul class="sub-menu children dropdown-menu">
						<li id="personal_dashboard"><i class="menu-icon fa fa-desktop"></i><a
							href="${contextRoot}/personal/personal-dashboard">Dashboard</a></li>
						<li id="basic_information"><i class="menu-icon fa fa-user"></i><a
							href="${contextRoot}/personal/basic-information">Basic Information</a></li>
						<li id="personal_qualification"><i class="menu-icon fa fa-graduation-cap"></i><a
							href="${contextRoot}/personal/qualification">Qualification</a></li>
						<li id="personal_dependents"><i class="menu-icon fa fa-sliders"></i><a
							href="${contextRoot}/personal/dependents">Dependents</a></li>
						<li id="emergency_contacts"><i class="menu-icon fa fa-phone-square"></i><a
							href="${contextRoot}/personal/emergency-contacts">Emergency Contacts</a></li>
					</ul></li>
				<li class="menu-title">Extras</li>
				<!-- /.menu-title -->
				<li class="menu-item-has-children dropdown"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <i class="menu-icon fa fa-clock-o"></i>Time
						Management
				</a>
					<ul class="sub-menu children dropdown-menu">
						<li id="project_time"><i class="menu-icon fa fa-pencil-square"></i><a
							href="${contextRoot}/management/time-management-projects">Projects</a></li>
						<li id="attendance_time"><i class="menu-icon fa fa-clock-o"></i><a
							href="${contextRoot}/management/time-management-attendence">Attendance</a></li>
						<li id="time_sheets"><i class="menu-icon fa fa-check-circle-o"></i><a
							href="${contextRoot}/management/time-sheets">Time Sheets</a></li>
						<li id="overtime_requests"><i class="menu-icon fa fa-align-center"></i><a
							href="${contextRoot}/management/overtime-requests">Overtime Requests</a></li>
					</ul></li>
				<li class="menu-item-has-children dropdown"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <i class="menu-icon fa fa-building"></i>Company
				</a>
					<ul class="sub-menu children dropdown-menu">
						<li id="staff_directory"><i class="menu-icon fa fa-users"></i><a
							href="${contextRoot}/company/staff-directory">Staff Directory</a></li>
					</ul></li>
					<li class="menu-item-has-children dropdown"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <i class="menu-icon fa fa-plane"></i>Travel Management
				</a>
					<ul class="sub-menu children dropdown-menu">
						<li id="travel_management"><i class="menu-icon fa fa-plane"></i><a
							href="${contextRoot}/travel-management/travel">Travel</a></li>
					</ul></li>
					<li class="menu-item-has-children dropdown"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <i class="menu-icon fa fa-money"></i>Finance
				</a>
					<ul class="sub-menu children dropdown-menu">
						<li id="finance_calculator"><i class="menu-icon fa fa-calculator"></i><a
							href="${contextRoot}/finance/finance-salary">Salary</a></li>
						<li id="finance_loans"><i class="menu-icon fa fa-shield"></i><a
							href="${contextRoot}/finance/finance-loans">Loans</a></li>
					</ul></li>
				<li class="menu-item-has-children dropdown"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <i class="menu-icon fa fa-file-text"></i>User Reports
				</a>
					<ul class="sub-menu children dropdown-menu">
						<li id="reports_user"><i class="menu-icon fa fa-file-o"></i><a
							href="${contextRoot}/user-reports/user-reports">Reports</a></li>
					</ul></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</nav>
</aside>