package service;

import bean.Admin;
import bean.Student;

public interface AdminService {
	public boolean login(Admin admin) throws Exception;
	public boolean login(Student student) throws Exception;
}
