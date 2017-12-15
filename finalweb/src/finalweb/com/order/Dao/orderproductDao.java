package finalweb.com.order.Dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import finalweb.com.order.bean.orderproduct;

@Component
@Repository
@Transactional
public class orderproductDao {
	@Resource
	private SessionFactory sessionFactory;
	
	public void save(orderproduct op){
		Session session = sessionFactory.openSession();
		Transaction tx =session.beginTransaction();
		session.save(op);
		tx.commit();

	}
	
	public List<orderproduct> findAll(){
		List<orderproduct> list = this.sessionFactory.openSession().createQuery("from orderproduct").list();
		return list;
	}
}
