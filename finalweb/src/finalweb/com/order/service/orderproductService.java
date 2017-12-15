package finalweb.com.order.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import finalweb.com.cart.bean.Cart;
import finalweb.com.order.Dao.orderproductDao;
import finalweb.com.order.bean.orderproduct;
@Component
@Repository
@Transactional
public class orderproductService {

	@Resource
	private orderproductDao opd;
	public void save(List<Cart> c,int a){
		orderproduct op=new orderproduct();
		for(int i=0;i<c.size();i++){
			op.setOrdernum(c.get(i).getOrdernum());
			op.setOrderid(a);
			op.setOrdernum(c.get(i).getOrdernum());
			op.setProductid(c.get(i).getProductid());
			opd.save(op);
		}
			
			
	}
}
