package finalweb.com.order.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import finalweb.com.cart.Dao.CartDao;
import finalweb.com.cart.bean.Cart;
import finalweb.com.order.Dao.orderDao;
import finalweb.com.order.bean.order;

@Component
@Repository
@Transactional
public class orderSerivce {
	@Resource
	private CartDao cd;
	@Resource
	private orderDao od;
	
	public List<Cart> findById(int id){
		List<Cart> list = cd.findAll();
		List<Cart> temp = new ArrayList<Cart>();
		for(int i=0;i<list.size();i++){
			if(list.get(i).getUserid()==id){
				System.out.println(list.get(i).getProductname());
				temp.add(list.get(i));
			}
		}
		System.out.println("商品"+temp.get(0).getProductname());
		return temp;
	}
	
	public List<order> findAll(int id){
		List<order> list=od.findAll();
		List<order> temp = new ArrayList<order>();
		for(int i=0;i<list.size();i++){
			if(list.get(i).getId()==id){
				temp.add(list.get(i));
			}
		}
		return temp;
	}
	
	public int  save(order o){
		return od.save(o);
	}
}
