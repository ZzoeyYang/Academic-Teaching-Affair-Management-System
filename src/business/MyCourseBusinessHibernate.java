package business;

import java.util.Collection;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;


import bean.MyCourse;
import bean.Student;
import service.MyCourseService;
import util.HibernateUtil;

public class MyCourseBusinessHibernate implements MyCourseService {
	private Session session;

	public Session getSession() {
		return session;
	}

	public void setSession(Session session) {
		this.session = session;
	}

	public MyCourseBusinessHibernate() {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		session = sessionFactory.openSession();
	}

	@Override
	public void addMyCourse(MyCourse myCourse) throws Exception {
		// TODO Auto-generated method stub
		Transaction transaction = session.beginTransaction();
		session.save(myCourse);
		transaction.commit();

	}
	
	@Override
	public Student getStudentBySid(String sid) throws Exception {
		// TODO Auto-generated method stub
		session.clear();
		String hqlString="from Student where sid=?";
		Query query=session.createQuery(hqlString);
		query.setString(0, sid);
		Student student=(Student) query.uniqueResult();
		return student;
		}

	@Override
	public Collection<MyCourse> allMyCourses(String sid) throws Exception {
		// TODO Auto-generated method stub
		session.clear();
		String hqlString = "from MyCourse where sid=?";
		Query query = session.createQuery(hqlString);
		query.setString(0, sid);
		@SuppressWarnings("unchecked")
		List<MyCourse> myCourses = query.list();
		return myCourses;
	}
/*
	@Override
	public Course getCourseById(int id) throws Exception {
		// TODO Auto-generated method stub
		session.clear();
		Course course = null;
		String hqlString = "from Course where id=?";
		Query query = session.createQuery(hqlString);
		query.setInteger(0, id);
		course = (Course) query.uniqueResult();
		return course;
	}

	@Override
	public void modifyCourse(Course course) throws Exception {
		// TODO Auto-generated method stub
		Transaction transaction = session.beginTransaction();
		String hqlString = "update Course set cid=?,cname=?,kkxq=?,xs=?,xf=? where id=?";
		Query query = session.createQuery(hqlString);
		query.setString(0, course.getCid());
		query.setString(1, course.getCname());
		query.setString(2, course.getKkxq());
		query.setString(3, course.getXs());
		query.setString(4, course.getXf());
		query.setInteger(5, course.getId());
		query.executeUpdate();
		transaction.commit();

	}*/

	@Override
	public void deleteMyCourse(MyCourse myCourse) throws Exception {
		// TODO Auto-generated method stub
		Transaction transaction = session.beginTransaction();
		String hqlString = "delete MyCourse where id=?";
		Query query = session.createQuery(hqlString);
		query.setInteger(0, myCourse.getId());
		query.executeUpdate();
		transaction.commit();
	}

}
