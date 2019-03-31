package net.decode.hrmsfront.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
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
	
}
