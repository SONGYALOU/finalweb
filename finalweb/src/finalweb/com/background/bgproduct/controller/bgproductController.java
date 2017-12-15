package finalweb.com.background.bgproduct.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import finalweb.com.background.bgproduct.service.bgprodcutService;
import finalweb.com.product.bean.Product;

@Controller
@RequestMapping("bgproduct")
public class bgproductController {
	@Resource
	private bgprodcutService bgps;
	
	@RequestMapping(value="/findAll")
	public String findAll(Model model,HttpSession session){
		List<Product> list=bgps.findAll();
		session.setAttribute("bgprodcut", list);
		return "bgproductlist";
	}
	@RequestMapping(value="/gotoadd")
	public String gotoadd(){
		return "addprodcut";
	}
	
	@RequestMapping(value="/addProdcut",method = RequestMethod.POST)
	public String addProdcut(@RequestParam("productname") String pname,
							@RequestParam("productprice") int pprice,
							@RequestParam("productintroduction") String pintroduct,
							@RequestParam("productnum") int pnum,Model model,HttpSession session
							){
		Product p=new Product();
		p.setProdcutnum(pnum);
		p.setProductname(pname);
		p.setProductprice(pprice);
		p.setProductintroduction(pintroduct);
		
		p.setProductimg("/finalweb/images/s1.jpg");
		bgps.save(p);
		
	
		return "bgmain";
	}
	@RequestMapping(value="/deleteProduct")
	public String deleteProduct(@RequestParam("id") int id,Model model,HttpSession session){
		bgps.deleteProduct(id);
		return "bgmain";
	}
	@RequestMapping(value="findbyid")
	public String findbyId(@RequestParam("id")int id,Model model,HttpSession session){
		session.setAttribute("bgProduct", bgps.findById(id));
		return "editProduct";
	}
	@RequestMapping(value="findProbyId",method= RequestMethod.POST)
	public String findProduct(@RequestParam("id")int id,Model model,HttpSession session){
		System.out.println(id);
		session.setAttribute("bgprodcut", bgps.findById(id));
		
		return "bgproductlist";
	}
	@RequestMapping(value="/editProduct",method= RequestMethod.POST,produces="text/html;charset=utf-8")
	public String editProduct(@RequestParam("productid") int pid,
							@RequestParam("productname") String pname,
							@RequestParam("productprice") int pprice,
							@RequestParam("productintroduction") String pintroduct,
							@RequestParam("productnum") int pnum,
							@RequestParam("productimg") String pimg,Model model,HttpSession session,HttpServletRequest request,HttpServletResponse responce){
		
		try {
			request.setCharacterEncoding("UTF-8");
			responce.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Product p= new Product();
		p.setProdcutnum(pnum);
		p.setProductimg(pimg);
		p.setProductintroduction(pintroduct);
		p.setProductname(pname);
		p.setProductprice(pprice);
		p.setProductid(pid);
		bgps.editProduct(p, pid);
		return "bgmain";
	}
	
//	@RequestMapping("/findNPage")
//	public String findNPage(Model model,HttpSession session){
//		int page=(int) session.getAttribute("pagenumber");
//
//		
//		if(page==bgps.getSumPage()){	
//			session.setAttribute("products",bgps.findByPage(page));
//		}else{
//			page=page+1;
//			session.setAttribute("products",bgps.findByPage(page));
//			session.setAttribute("pagenumber", page);
//		}
//		System.out.println(page);
//		
//		return "store";
//	}
//	@RequestMapping("/findLPage")
//	public String findLPage (Model model,HttpSession session){
//		session.setAttribute("products",bgps.findByPage(bgps.getSumPage()));
//		session.setAttribute("pagenumber",bgps.getSumPage());
//		
//		return "store";
//	}
}
