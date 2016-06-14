package action;

import service.MyCourseService;
import bean.MyCourse;

import com.opensymphony.xwork2.ActionSupport;

public class DeleteMyCourse extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private MyCourse myCourse;
	private MyCourseService myCourseService;

	public MyCourse getMyCourse() {
		return myCourse;
	}

	public void setMyCourse(MyCourse myCourse) {
		this.myCourse = myCourse;
	}

	public MyCourseService getMyCourseService() {
		return myCourseService;
	}

	public void setMyCourseService(MyCourseService myCourseService) {
		this.myCourseService = myCourseService;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		try {
			myCourseService.deleteMyCourse(myCourse);
			return SUCCESS;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return ERROR;
		}
	}

}
