package finalweb.com.cart.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import finalweb.com.cart.bean.Cart;
import finalweb.com.cart.service.CartService;
import finalweb.com.product.bean.Product;
import finalweb.com.user.bean.User;

@Controller
@RequestMapping("cart")
public class CartContoller {
	@Resource
	private CartService cs;
	
	@RequestMapping(value="/saveCart",method = RequestMethod.POST)
	public String saveCart(@RequestParam("number") int number,Model model,HttpSession session ){
		if(session.getAttribute("cart")!=null){
			Cart c=new Cart();
			c.setOrdernum(number);
			c.setProductid(((Product) session.getAttribute("single")).getProductid());
			c.setUserid((int) session.getAttribute("cart"));
			c.setProductname(((Product) session.getAttribute("single")).getProductname());
			c.setProductprice(((Product) session.getAttribute("single")).getProductprice());
			cs.save(c);
			return "store";
		}else{
			return "login";
		}
	}
	@RequestMapping(value="/checkCart")
	public String checkCart(Model model,HttpSession session){
		if(session.getAttribute("cart")!=null){
			session.setAttribute("checkcart", cs.findById((int)session.getAttribute("cart")));
			session.setAttribute("sum", cs.checkSum((int)session.getAttribute("cart")));
			System.out.println();
			return "cart";
		}else{
			return "login";
		}
	}
	@RequestMapping(value="/deleteproduct")
	public String deleteproduct(@RequestParam("id") int id,Model model,HttpSession session){
		cs.deleteProdcut((int)session.getAttribute("cart"), id);
		session.setAttribute("checkcart", cs.findById((int)session.getAttribute("cart")));
		
		return "cart";
	}
	@RequestMapping(value="/minproduct",method = RequestMethod.POST)
	@ResponseBody
	public String minproduct(@RequestParam("productid") int id,@RequestParam("ordernum") int ordernum,Model model,HttpSession session){
		cs.reduceProduct((int)session.getAttribute("cart"), id);
		return "cart";
		 
	}
	@RequestMapping(value="/addproduct",method = RequestMethod.POST)
	@ResponseBody
	public String addproduct(@RequestParam("productid") int id,@RequestParam("ordernum") int ordernum,Model model,HttpSession session){
		cs.addProduct((int)session.getAttribute("cart"), id);
		return "cart";
		 
	}
	
	

}
