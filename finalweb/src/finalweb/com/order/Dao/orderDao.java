package finalweb.com.order.Dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import finalweb.com.order.bean.order;

@Component
@Repository
@Transactional
public class orderDao {
	@Resource
	private SessionFactory sessionFactory;
	
	
	public int  save(order o){
//		Session session =sessionFactory.openSession();
//		Transaction tx= session.beginTransaction();
//		session.save(o);
//		tx.commit();
		this.sessionFactory.getCurrentSession().save(o);
		return o.getId();
	}
	
	public List<order>  findAll(){
		List<order> list = this.sessionFactory.openSession().createQuery("from order").list();
		return list;
	}
}
