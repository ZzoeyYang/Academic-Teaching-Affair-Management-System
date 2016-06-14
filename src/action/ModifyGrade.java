package action;

import service.GradeService;
import bean.Grade;

import com.opensymphony.xwork2.ActionSupport;

public class ModifyGrade extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Grade grade;
	private GradeService gradeService;

	public Grade getGrade() {
		return grade;
	}

	public void setGrade(Grade grade) {
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
		try {
			setGrade(gradeService.getGradeById(grade.getId()));
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}

	}

}
