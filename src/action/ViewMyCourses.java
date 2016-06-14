package action;

import java.util.Collection;

import bean.MyCourse;
import bean.Student;
import service.MyCourseService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ViewMyCourses extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Collection<MyCourse> myCourses;
	private MyCourseService myCourseService;

	

	public Collection<MyCourse> getMyCourses() {
		return myCourses;
	}

	public void setMyCourses(Collection<MyCourse> myCourses) {
		this.myCourses = myCourses;
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
//			if ((Admin) ActionContext.getContext().getSession().get("admin") != null) {
//				setCourses(courseService.allCourses());
//				return "ADMIN";
			Student student=(Student) ActionContext.getContext().getSession().get("student");
//				setCourses(courseService.allCourses());
//				return "STUDENT";
//			}
			setMyCourses(myCourseService.allMyCourses(student.getSid()));
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
	}

}
