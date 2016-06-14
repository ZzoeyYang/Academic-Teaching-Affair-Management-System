package action;

import java.util.Collection;

import service.GradeService;
import bean.Admin;
import bean.Grade;
import bean.Student;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ViewGrade extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Collection<Grade> grade;
	private GradeService gradeService;

	public Collection<Grade> getGrade() {
		return grade;
	}

	public void setGrade(Collection<Grade> grade) {
		this.grade = grade;
	}

	public GradeService getGradeService() {
		return gradeService;
	}

	public void setGradeService(GradeService gradeService) {
		this.gradeService = gradeService;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		Student student=null;
			try {
				if ((Admin) ActionContext.getContext().getSession().get("admin") != null) {
					setGrade(gradeService.allGrades());
					return "ADMIN";
				} else if( (student=(Student) ActionContext.getContext().getSession().get("student") )!= null) {
					setGrade(gradeService.allGrades(student.getSid()));
					return "STUDENT";
				}
			setGrade(gradeService.allGrades());
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
	}

}
