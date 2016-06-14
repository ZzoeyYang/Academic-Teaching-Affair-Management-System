package action;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import bean.Login;
import bean.Admin;
import bean.Student;
import service.AdminService;



public class Login2 extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	private Login login;
	private AdminService adminService;

	public AdminService getAdminService() {
		return adminService;
	}

	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	public Login getLogin() {
		return login;
	}

	public void setLogin(Login login) {
		this.login = login;
	}

	@Override
	public String execute() throws Exception {
		String s = ServletActionContext.getRequest().getParameter("test");
		
		if(s.equals("管理员")){
			Admin admin =new Admin();
			admin.setName(login.getName());
			admin.setPassword(login.getPassword());
			//admin.setType(1);
			if (adminService.login(admin)) {
				ActionContext.getContext().getSession().put("admin", admin);
				return "ADMIN";
			} else {
				return INPUT;
			}
		}else if(s.equals("学生")){
			Student student =new Student();
			student.setSid(login.getName());
			student.setPassword(login.getPassword());
			if (adminService.login(student)) {
				ActionContext.getContext().getSession().put("student", student);
				return "STUDENT";
			} else {
				return INPUT;
			}
		}
//		else {
//			admin.setType(2);
//			if (adminService.login(admin)) {
//				ActionContext.getContext().getSession().put("admin", admin);
//				return "TEACHER";
//			} else {
//				return INPUT;
//			}
//		}
		
		/*
		System.out.println(login.getName());
		System.out.println(login.getPassword());
		
		System.out.println(s);*/ 
		return ERROR;
	}

	

}
