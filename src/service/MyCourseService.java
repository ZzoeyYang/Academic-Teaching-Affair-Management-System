package service;

import java.util.Collection;

import bean.MyCourse;
import bean.Student;

public interface MyCourseService {
	public void addMyCourse(MyCourse myCourse) throws Exception;

	public Collection<MyCourse> allMyCourses(String sid) throws Exception;

	/*public Course getCourseById(int id) throws Exception;

	public void modifyCourse(Course course) throws Exception;*/

	public void deleteMyCourse(MyCourse myCourse) throws Exception;
	
	public Student getStudentBySid(String sid) throws Exception;

}
