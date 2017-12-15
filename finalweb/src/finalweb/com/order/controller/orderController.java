package finalweb.com.order.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import finalweb.com.cart.bean.Cart;
import finalweb.com.order.bean.order;
import finalweb.com.order.service.orderSerivce;
import finalweb.com.order.service.orderproductService;
import finalweb.com.user.bean.userorder;
import finalweb.com.user.service.UserOrderservice;

@Controller
@RequestMapping("order")
public class orderController {
	@Resource
	private orderSerivce os;
	@Resource
	private UserOrderservice uos;
	@Resource
	private orderproductService ops;
	
	@RequestMapping("/checkorder")
	public String findAll(Model model,HttpSession session){

		List<Cart> a=os.findById((int)session.getAttribute("cart"));
		session.setAttribute("orderproduct",a);
		
		List<userorder> b=uos.findById((int)session.getAttribute("cart"));
		session.setAttribute("userorder",b);
		
		
		return "order";
	}
	
	@RequestMapping("/save")
	public String save(@RequestParam("deliverman") String name,
						@RequestParam("province") String province,
						@RequestParam("city") String city,
						@RequestParam("address") String address,
						@RequestParam("postcode") int postcode,
						@RequestParam("phone") int phone,Model model,HttpSession session){
		
		userorder uo = new userorder();
		uo.setDeliverman(name);
		uo.setDeliveraddress(province+city+address);
		uo.setUserid((int)session.getAttribute("cart"));
		uo.setDeliverphone(phone);
		uo.setPostcode(postcode);
		uos.save(uo);
		List<userorder> b=uos.findById((int)session.getAttribute("cart"));
		session.setAttribute("userorder",b);
		
		return "order";
	}
	@RequestMapping(value="/adduoid",method = RequestMethod.POST)
	@ResponseBody
	public String adduoid(@RequestParam("uoid") int id,Model model,HttpSession session){
		session.setAttribute("uoid", id);
		System.out.println("uo为"+session.getAttribute("uoid"));
		return "sucess";
	}
	@RequestMapping(value="/saveorder")
	public String saveorder(Model model,HttpSession session){
		order o =new order();
		o.setPayway(0);
		o.setUserid((int)session.getAttribute("cart"));
		o.setOrderuserid((int)session.getAttribute("uoid"));
		int i=os.save(o);
		List<Cart> c=(List<Cart>) session.getAttribute("orderproduct");
		ops.save(c, i);
		
		
		
		return "personal";
	}
}
