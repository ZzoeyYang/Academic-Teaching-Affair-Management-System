package action;

import service.GradeService;
import bean.Grade;

import com.opensymphony.xwork2.ActionSupport;

public class ModifyGrade1 extends ActionSupport {
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
			gradeService.modifyGrade(grade);
			return SUCCESS;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return ERROR;
		}
	}

	@Override
	public void validate() {
		// TODO Auto-generated method stub
		if (null == grade.getCid() || "".equals(grade.getCid())) {
			addFieldError("grade.cid", "请输入课程号");
		}
		if (null == grade.getCname() || "".equals(grade.getCname())) {
			addFieldError("grade.cname", "请输入课程名");
		}
		if (null == grade.getSid() || "".equals(grade.getSid())) {
			addFieldError("grade.sid", "请输入学号");
		}
		if (null == grade.getSname() || "".equals(grade.getSname())) {
			addFieldError("grade.sname", "请输入学生姓名");
		}
		if (null == grade.getTname() || "".equals(grade.getTname())) {
			addFieldError("grade.tname", "请输入教师姓名");
		}
		if ( "".equals(grade.getTotal())) {
			addFieldError("grade.total", "请输入成绩");
		}
	}

}
