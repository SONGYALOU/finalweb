package finalweb.com.background.bgproduct.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import finalweb.com.product.bean.Product;
import finalweb.com.product.bean.ProductSize;

@Component
@Repository
@Transactional
public class bgproductDao {
	@Resource
	private SessionFactory sessionFactory;
	
	public List<Product> findAll(){
		List<Product> list = this.sessionFactory.openSession().createQuery("from Product").list();
		return list;
	}
	public void save(Product p){
		Session session =sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.save(p);
		tx.commit();
	}
	public Product findbyId(int id){
		Session session=sessionFactory.openSession();
		Product p =session.get(Product.class,id);
		return p;
	}
	
	public void update(Product p,int id){
//		String hql="update Product p set p.productname="+p.getProductname()+",p.productprice="+p.getProductprice()+",p.productintroduction="+p.getProductintroduction()+",p.productnum="+p.getProdcutnum()+",p.productimg="+p.getProductimg()+" where p.productid="+id;
		sessionFactory.getCurrentSession().update(p);
		
	}
	public void deleteProduct (int id){
		String hql="delete Product p where p.productid="+id;
		sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
	}
	public List<ProductSize> findSize(){
		  List<ProductSize> lists =this.sessionFactory.openSession().createQuery("from ProductSize").list();
		  return lists;
		  
	  }
	  public int getSumPage(){
		  List<Product> list = this.sessionFactory.openSession().createQuery("from Product").list();
		  int sumpage=0;
		 if((list.size()%12)==0){
			 sumpage=list.size()/12;
		 }else{
			 sumpage=list.size()/12+1;
		 }
		  return sumpage;
	  }
//	  public List<Product> finAll(){
//		  List<Product> list = this.sessionFactory.openSession().createQuery("from Product").list();
//		  return list;
//	  }
	  public List<Product> findByPage(){
		  List<Product> list = this.sessionFactory.openSession().createQuery("from Product").list();
		 return list;
	  }
}
