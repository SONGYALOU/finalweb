package finalweb.com.user.Dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import finalweb.com.user.bean.userorder;
@Component
@Repository
@Transactional
public class UserOrderDao {
	@Resource
	private SessionFactory sessionFactory;
	
	public void save(userorder uo){
		Session session =sessionFactory.getCurrentSession();
		session.save(uo);
	}
	
	@SuppressWarnings("unused")
	public  List<userorder> findAll(){
		List<userorder> list = sessionFactory.openSession().createQuery("from userorder").list();
		return list;
	}
}
