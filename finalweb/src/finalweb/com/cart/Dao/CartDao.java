package finalweb.com.cart.Dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import finalweb.com.cart.bean.Cart;
import finalweb.com.product.bean.Product;
import finalweb.com.user.bean.User;
@Component
@Repository
@Transactional
public class CartDao {
	@Resource
	private SessionFactory sessionFactory;
	
	public void save(Cart c){
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.save(c);
		tx.commit();
	}
	
	public List<Cart> findAll(){
		List<Cart> list = this.sessionFactory.openSession().createQuery("from Cart").list();
		 return list;
	}
	public void deleteProduct(int userid,int productid ){
		String hql="delete Cart c where c.userid="+userid+" and c.productid="+productid;
		sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
		
	}
	public int addProdcut(int userid,int productid){
		List<Cart> list = this.sessionFactory.openSession().createQuery("from Cart").list();
		int order=0;
		for(int i=0;i<list.size();i++){
			if((userid==list.get(i).getUserid())&&(productid==list.get(i).getProductid())){
				order=list.get(i).getOrdernum();
			}
		}
		order=order+1;
		String hql="update Cart c set c.ordernum="+order+"where userid="+userid+" and productid="+productid;
		sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
		return order;
	}
	
	public int reduceProdcut(int userid,int productid){
		List<Cart> list = this.sessionFactory.openSession().createQuery("from Cart").list();
		int order=0;
		for(int i=0;i<list.size();i++){
			if((userid==list.get(i).getUserid())&&(productid==list.get(i).getProductid())){
				order=list.get(i).getOrdernum();
				System.out.println(order);
			}
		}
		order=order-1;
		String hql="update Cart c set c.ordernum="+order+"where userid="+userid+" and productid="+productid;
		sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
		return order;
	}
	
}
