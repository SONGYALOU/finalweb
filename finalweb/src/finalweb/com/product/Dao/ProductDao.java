package finalweb.com.product.Dao;


import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import finalweb.com.product.bean.Product;
import finalweb.com.product.bean.ProductColor;
import finalweb.com.product.bean.ProductSize;


@Component
@Repository
@Transactional
public class ProductDao {
	
	  @Autowired
	  private SessionFactory sessionfactory;
	  
	  
	  public List<Product> finAll(){
		  List<Product> list = this.sessionfactory.openSession().createQuery("from Product").list();
		  return list;
	  }
	  public List<Product> findByPage(){
		  List<Product> list = this.sessionfactory.openSession().createQuery("from Product").list();
		 return list;
	  }
	  public int getSumPage(){
		  List<Product> list = this.sessionfactory.openSession().createQuery("from Product").list();
		  int sumpage=0;
		 if((list.size()%12)==0){
			 sumpage=list.size()/12;
		 }else{
			 sumpage=list.size()/12+1;
		 }
		  return sumpage;
	  }
	 
	  public Product findById(int id){
		  Session session =sessionfactory.openSession();
		  Product p =session.get(Product.class, id);

		  return p;
		  
	  }
	  @SuppressWarnings("unchecked")
	public List<ProductColor> findColor(){
		  List<ProductColor> listc = this.sessionfactory.openSession().createQuery("from ProductColor").list();
		  return listc;
		  
	  }
	  @SuppressWarnings("unchecked")
	public List<ProductSize> findSize(){
		  List<ProductSize> lists =this.sessionfactory.openSession().createQuery("from ProductSize").list();
		  return lists;
		  
	  }
}