package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import bean.Course;
import bean.MyCourse;
import bean.Student;
import service.MyCourseService;

public class AddMyCourse extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private MyCourse myCourse;
	private MyCourseService myCourseService;
	private Course course;

	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

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
			Student student = (Student) ActionContext.getContext().getSession().get("student");
			//System.out.println(student.getSid() + "***");
			student = myCourseService.getStudentBySid(student.getSid());
			myCourse = new MyCourse();
			myCourse.setCid(course.getCid());
			String cname = new String(course.getCname().getBytes("iso-8859-1"), "GB2312");
			myCourse.setCname(cname);
			myCourse.setSid(student.getSid());
			myCourse.setSname(student.getSname());
			myCourseService.addMyCourse(myCourse);
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
	}

}
