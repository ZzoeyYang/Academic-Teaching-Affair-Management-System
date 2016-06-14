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
			addFieldError("grade.cid", "������γ̺�");
		}
		if (null == grade.getCname() || "".equals(grade.getCname())) {
			addFieldError("grade.cname", "������γ���");
		}
		if (null == grade.getSid() || "".equals(grade.getSid())) {
			addFieldError("grade.sid", "������ѧ��");
		}
		if (null == grade.getSname() || "".equals(grade.getSname())) {
			addFieldError("grade.sname", "������ѧ������");
		}
		if (null == grade.getTname() || "".equals(grade.getTname())) {
			addFieldError("grade.tname", "�������ʦ����");
		}
		if ( "".equals(grade.getTotal())) {
			addFieldError("grade.total", "������ɼ�");
		}
	}

}
