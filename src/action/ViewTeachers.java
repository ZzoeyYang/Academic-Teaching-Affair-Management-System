package action;

import java.util.Collection;

import service.TeacherService;
import bean.Admin;
import bean.Student;
import bean.Teacher;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ViewTeachers extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Collection<Teacher> teachers;
	private TeacherService teacherService;

	public Collection<Teacher> getTeachers() {
		return teachers;
	}

	public void setTeachers(Collection<Teacher> teachers) {
		this.teachers = teachers;
	}

	public TeacherService getTeacherService() {
		return teacherService;
	}

	public void setTeacherService(TeacherService teacherService) {
		this.teacherService = teacherService;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
			try {
				if ((Admin) ActionContext.getContext().getSession().get("admin") != null) {
					setTeachers(teacherService.allTeachers());
					return "ADMIN";
				} else if ((Student) ActionContext.getContext().getSession().get("student") != null) {
					setTeachers(teacherService.allTeachers());
					return "STUDENT";
				}
				
			setTeachers(teacherService.allTeachers());
			return SUCCESS;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return ERROR;
		}
	}

}
