package finalweb.com.cart.service;


import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import finalweb.com.cart.Dao.CartDao;
import finalweb.com.cart.bean.Cart;

@Component
@Repository
@Transactional
public class CartService {
	@Resource
	private CartDao cd;
	
	public void save(Cart c){
		this.cd.save(c);
	}
	public List<Cart> findById(int id){
		List<Cart> list = cd.findAll();
		List<Cart> temp = new ArrayList<Cart>();
		for(int i=0;i<list.size();i++){
			if(list.get(i).getUserid()==id){
				System.out.println(list.get(i).getProductname());
				temp.add(list.get(i));
			}
		}
		return temp;
	}
	
	public int checkSum(int id){
		List<Cart> list = cd.findAll();
		List<Cart> temp = new ArrayList<Cart>();
		int sum=0;
		for(int i=0;i<list.size();i++){
			if(list.get(i).getUserid()==id){
				temp.add(list.get(i));
			}
		}
		for(int i=0;i<temp.size();i++){
			sum=sum+temp.get(i).getOrdernum()*temp.get(i).getProductprice();
		}
		return sum;
	}
	public void deleteProdcut(int userid,int productid){
		cd.deleteProduct(userid, productid);
	}
	
	public int addProduct(int userid,int productid){
		return cd.addProdcut(userid, productid);
	}
	public int reduceProduct(int userid,int productid){
		return cd.reduceProdcut(userid, productid);
	}
}
