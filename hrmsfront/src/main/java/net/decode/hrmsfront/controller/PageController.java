package net.decode.hrmsfront.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {

	@RequestMapping(value = { "/", "/home", "/index" })
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Home");
		mv.addObject("userClickHome", true);
		return mv;
	}
	
	@RequestMapping(value = { "/admin/company-structure" })
	public ModelAndView company() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Company");
		mv.addObject("userClickCompanyStructure", true);
		return mv;
	}
	
	@RequestMapping(value = { "/admin/job-details-setup" })
	public ModelAndView jobDetailsSetup() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Job Details Setup");
		mv.addObject("userClickJobDetailsSetup", true);
		return mv;
	}
	
	@RequestMapping(value = { "/admin/qualification-setup" })
	public ModelAndView qualificationSetup() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Qualification Setup");
		mv.addObject("userClickQualificationSetup", true);
		return mv;
	}
	
	@RequestMapping(value = { "/admin/project-client-setup" })
	public ModelAndView projectClientSetup() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Project/Client Setup");
		mv.addObject("userClickProjectClientSetup", true);
		return mv;
	}
	
	@RequestMapping(value = { "/admin/overtime-administration" })
	public ModelAndView overtimeAdminstration() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Overtime Administration");
		mv.addObject("userClickOvertimeAdministration", true);
		return mv;
	}
	
	@RequestMapping(value = { "/admin/employee-custom-fields" })
	public ModelAndView employeeCustomFields() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Employee Custom Fields");
		mv.addObject("userClickEmployeeCustomFields", true);
		return mv;
	}
	
	@RequestMapping(value = { "/admin/company-loans" })
	public ModelAndView companyLoans() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Company Loans");
		mv.addObject("userClickCompanyLoans", true);
		return mv;
	}
	
	@RequestMapping(value = { "/employee/employees" })
	public ModelAndView companyEmployee() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Employee");
		mv.addObject("userClickEmployees", true);
		return mv;
	}
	
	@RequestMapping(value = { "/employee/travel-requests" })
	public ModelAndView travelRequests() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Travel Requests");
		mv.addObject("userClickTravelRequests", true);
		return mv;
	}
	
	@RequestMapping(value = { "/employee/monitor-attendance" })
	public ModelAndView monitorAttendance() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Monitor Attendance");
		mv.addObject("userClickMonitorAttendance", true);
		return mv;
	}
	
	@RequestMapping(value = { "/reports/reports" })
	public ModelAndView reports() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Reports");
		mv.addObject("userClickReports", true);
		return mv;
	}
	
	@RequestMapping(value = { "/system/setting" })
	public ModelAndView systemSettings() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "System Settings");
		mv.addObject("userClickSettings", true);
		return mv;
	}
	
	@RequestMapping(value = { "/system/users" })
	public ModelAndView systemUsers() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "System Users");
		mv.addObject("userClickSystemUsers", true);
		return mv;
	}
	
	@RequestMapping(value = { "/system/manage-modules" })
	public ModelAndView manageModules() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Manage Modules");
		mv.addObject("userClickManageModules", true);
		return mv;
	}
	
	@RequestMapping(value = { "/system/manage-permission" })
	public ModelAndView managePermission() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Manage Permission");
		mv.addObject("userClickManagePermission", true);
		return mv;
	}
	
	@RequestMapping(value = { "/system/manage-metadata" })
	public ModelAndView manageMetadata() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Manage Metadata");
		mv.addObject("userClickManageMetadata", true);
		return mv;
	}
	
	@RequestMapping(value = { "/system/data" })
	public ModelAndView systemData() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Sysetm Data");
		mv.addObject("userClickSystemData", true);
		return mv;
	}
	
	@RequestMapping(value = { "/payroll/salary" })
	public ModelAndView payrollSalary() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Payroll Salary");
		mv.addObject("userClickPayrollSalary", true);
		return mv;
	}
	
	@RequestMapping(value = { "/payroll/payroll-reports" })
	public ModelAndView payrollReports() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Payroll Reports");
		mv.addObject("userClickPayrollReports", true);
		return mv;
	}
	
	@RequestMapping(value = { "/personal/personal-dashboard" })
	public ModelAndView personalDashboard() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Personal Dashboard");
		mv.addObject("userClickPersonalDashboard", true);
		return mv;
	}
	
	@RequestMapping(value = { "/personal/basic-information" })
	public ModelAndView basicInformation() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Basic Information");
		mv.addObject("userClickBasicInformation", true);
		return mv;
	}
	
	@RequestMapping(value = { "/personal/qualification" })
	public ModelAndView personalQualification() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Personal Qualification");
		mv.addObject("userClickQualification", true);
		return mv;
	}
	
	@RequestMapping(value = { "/personal/dependents" })
	public ModelAndView personalDependents() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Personal Dependents");
		mv.addObject("userClickDependents", true);
		return mv;
	}
	
	@RequestMapping(value = { "/personal/emergency-contacts" })
	public ModelAndView emergencyContacts() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Emergency Contacts");
		mv.addObject("userClickEmergencyContacts", true);
		return mv;
	}
	
	@RequestMapping(value = { "/management/time-management-projects" })
	public ModelAndView managementProjects() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Time Management Projects");
		mv.addObject("userClickManagementProject", true);
		return mv;
	}
	
	@RequestMapping(value = { "/management/time-management-attendence" })
	public ModelAndView managementAttendence() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Time Management Attendance");
		mv.addObject("userClickManagementAttedance", true);
		return mv;
	}
	
	@RequestMapping(value = { "/management/time-sheets" })
	public ModelAndView timeSheets() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Time Sheets");
		mv.addObject("userClickTimeSheets", true);
		return mv;
	}
	
	@RequestMapping(value = { "/management/overtime-requests" })
	public ModelAndView overtimeRequests() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Overtime Requests");
		mv.addObject("userClickOvertimeRequests", true);
		return mv;
	}
	
	@RequestMapping(value = { "/company/staff-directory" })
	public ModelAndView staffDirectory() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Staff Directory");
		mv.addObject("userClickStaffDirectory", true);
		return mv;
	}
	
	@RequestMapping(value = { "/travel-management/travel" })
	public ModelAndView travelManagement() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Travel Management");
		mv.addObject("userClickTravel", true);
		return mv;
	}
	
	@RequestMapping(value = { "/finance/finance-salary" })
	public ModelAndView financeSalary() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Finance Salart");
		mv.addObject("userClickFinanceSalary", true);
		return mv;
	}
	
	@RequestMapping(value = { "/finance/finance-loans" })
	public ModelAndView financeLoans() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Finance Loans");
		mv.addObject("userClickFinanceLoans", true);
		return mv;
	}
	
	@RequestMapping(value = { "/user-reports/user-reports" })
	public ModelAndView userReports() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "User Reports");
		mv.addObject("userClickReportsUser", true);
		return mv;
	}
	
}
