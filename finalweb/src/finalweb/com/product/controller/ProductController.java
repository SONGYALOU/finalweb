package finalweb.com.product.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import finalweb.com.product.bean.Product;
import finalweb.com.product.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired
	private ProductService ps;
	
	
	@RequestMapping("/findAll")
	public String findAll(Model model,HttpSession session){
		List<Product> list =ps.findAll();
		List<Product> listtemp=new ArrayList<Product>();
		if(list.size()>12){
			for(int i=0;i<12;i++){
				listtemp.add(i, list.get(i));
			}
		}else{
			listtemp=list;
			session.setAttribute("pagenumber", 1);
		}
		session.setAttribute("products",listtemp);
		return "store";
		
	}
	@RequestMapping("/findFPage")
	public String findFPage(Model model,HttpSession session){

		int page=(int) session.getAttribute("pagenumber");

		
		if(page==1){			
			session.setAttribute("products",ps.findByPage(page));
		}else if(page<ps.getSumPage()){
			page=page-1;
			session.setAttribute("products",ps.findByPage(page));
			session.setAttribute("pagenumber", page);
		}
		System.out.println(page);
		
		return "store";
	}
	@RequestMapping("/findNPage")
	public String findNPage(Model model,HttpSession session){
		int page=(int) session.getAttribute("pagenumber");

		
		if(page==ps.getSumPage()){	
			session.setAttribute("products",ps.findByPage(page));
		}else{
			page=page+1;
			session.setAttribute("products",ps.findByPage(page));
			session.setAttribute("pagenumber", page);
		}
		System.out.println(page);
		
		return "store";
	}
	@RequestMapping("/findLPage")
	public String findLPage (Model model,HttpSession session){
		session.setAttribute("products",ps.findByPage(ps.getSumPage()));
		session.setAttribute("pagenumber",ps.getSumPage());
		
		return "store";
	}

	@RequestMapping("/goToSingle")
	public String goToSingle(@RequestParam("p") int pid,Model model,HttpSession session){
		session.setAttribute("single", ps.findById(pid));
//		session.setAttribute("color", ps.findColor(pid));
		session.setAttribute("size", ps.findSize(pid));
		session.setAttribute("random",ps.randomProduct());
		System.out.println(ps.randomProduct().get(0).getProductname());
		return "single";
	}
	@RequestMapping("/addToCart")
	public String addToCart(@RequestParam("p") int pid,Model model,HttpSession session){
		if(session.getAttribute("userid")!=null){
			session.setAttribute("cart", ps.findById(pid));
			
			return "single";
		}else{
			return "login";
		}
		
	}

}
