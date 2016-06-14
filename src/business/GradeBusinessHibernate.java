package business;

import java.util.Collection;
import java.util.List;



import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import bean.Grade;
import service.GradeService;
import util.HibernateUtil;

public class GradeBusinessHibernate implements GradeService{
	private Session session;

	public GradeBusinessHibernate() {
		SessionFactory sessionFactory=HibernateUtil.getSessionFactory();
		this.session = sessionFactory.openSession();
	}

	@Override
	public void addGrade(Grade grade) throws Exception {
		// TODO Auto-generated method stub
		Transaction transaction=session.beginTransaction();
		session.save(grade);
		transaction.commit();
	}

	@Override
	public Collection<Grade> allGrades() throws Exception {
		// TODO Auto-generated method stub
		session.clear();
		String hqlString="from Grade";
		Query query=session.createQuery(hqlString);
		@SuppressWarnings("unchecked")
		List<Grade> grades=query.list();
		return grades;
	}
	
	@Override
	public Collection<Grade> allGrades(String sid) throws Exception {
		// TODO Auto-generated method stub
		session.clear();
		String hqlString="from Grade where sid=?";
		Query query=session.createQuery(hqlString);
		query.setString(0,sid);
		@SuppressWarnings("unchecked")
		List<Grade> grades=query.list();
		return grades;
	}

	@Override
	public Grade getGradeById(int id) throws Exception {
		// TODO Auto-generated method stub
		session.clear();
		Grade grade=null;
		String hqlString="from Grade where id=?";
		Query query=session.createQuery(hqlString);
		query.setInteger(0, id);
		grade=(Grade)query.uniqueResult();
		return grade;
		}

	@Override
	public void modifyGrade(Grade grade) throws Exception {
		// TODO Auto-generated method stub
		Transaction transaction=session.beginTransaction();
		String hqlString="update Grade set sid=?,sname=?,cid=?,cname=?,tname=?,total=? where id=?";
		Query query=session.createQuery(hqlString);
		query.setString(0, grade.getSid());
		query.setString(1, grade.getSname());
		query.setString(2, grade.getCid());
		query.setString(3, grade.getCname());
		query.setString(4, grade.getTname());
		query.setFloat(5, grade.getTotal());	
		query.setInteger(6, grade.getId());
		query.executeUpdate();
		transaction.commit();
	}

	@Override
	public void deleteGrade(Grade grade) throws Exception {
		// TODO Auto-generated method stub
		Transaction transaction=session.beginTransaction();
		String hqlString="delete Grade where id=?";
		Query query=session.createQuery(hqlString);
		query.setInteger(0, grade.getId());
		query.executeUpdate();
		transaction.commit();
	}

}
