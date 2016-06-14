package service;

import java.util.Collection;

import bean.Grade;

public interface GradeService {
	public void addGrade(Grade grade) throws Exception;

	public Collection<Grade> allGrades() throws Exception;
	
	public Collection<Grade> allGrades(String sid) throws Exception;

	public Grade getGradeById(int id) throws Exception;

	public void modifyGrade(Grade grade) throws Exception;

	public void deleteGrade(Grade grade) throws Exception;

}
