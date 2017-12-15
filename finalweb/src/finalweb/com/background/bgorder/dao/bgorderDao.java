package finalweb.com.background.bgorder.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import finalweb.com.order.bean.order;
import finalweb.com.user.bean.User;

@Component
@Repository
@Transactional
public class bgorderDao {
	@Resource
	private SessionFactory sessionFactory;
	
	public List<order>  findAll(){
		List<order> list = this.sessionFactory.openSession().createQuery("from order").list();
		System.out.println(list.get(0).getId()+"id是");
		return list;
	}
	public void deleteOrder (int id){
		String hql="delete order o where o.id="+id;
		sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
	}
	public void update(order o){
		sessionFactory.getCurrentSession().update(o);
	}
	public void save(order o){
		Session session =sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.save(o);
		tx.commit();
	}

}
