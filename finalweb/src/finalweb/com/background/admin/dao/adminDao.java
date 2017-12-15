package finalweb.com.background.admin.dao;


import java.util.List;

import javax.annotation.Resource;
import javax.swing.JOptionPane;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;


import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import finalweb.com.user.bean.User;
@Component
@Repository
@Transactional
public class adminDao {
	@Resource
	private SessionFactory sessionFactory;
	
	public List<User> findAll(){
		List<User> list = this.sessionFactory.openSession().createQuery("from User").list();
		return list;
	}
	public void deleteUser (int id){
		String hql="delete User u where u.userid="+id;
		sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
	}
	public void save(User u){
		Session session =sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.save(u);
		tx.commit();
	}
	public void update(User u){
		sessionFactory.getCurrentSession().update(u);
	}

}
