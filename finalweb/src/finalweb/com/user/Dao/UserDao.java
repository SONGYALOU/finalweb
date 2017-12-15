package finalweb.com.user.Dao;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import finalweb.com.user.bean.User;

@Component
@Repository
@Transactional
public class UserDao {
	@Resource
	private SessionFactory sessionFactory;
	
	public User findById(int id) {
		Session session = sessionFactory.openSession();
		User u = session.get(User.class, id);
		return u;
	}
	
	public void save(User u){
//		Session session = (Session) sessionFactory.getCurrentSession().save(u);
		Session session = sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		
		session.save(u);
		tx.commit();
	}
	
	
}
