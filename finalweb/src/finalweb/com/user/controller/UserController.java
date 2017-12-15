package finalweb.com.user.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import finalweb.com.user.bean.User;
import finalweb.com.user.service.Userservice;

@Controller
@RequestMapping("finalweb")
public class UserController {
	@Resource
	private Userservice us;

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam("id") int loginid, @RequestParam("password") String pwd,
			Model model, HttpSession session) {
		
		User u = this.us.login(loginid, pwd);
		
		if (u != null) {
			session.setAttribute("cart", loginid);
			return "index";
		} else {
			System.out.println("false");
			return "login";
		}
	}

	
	@RequestMapping(value="/signup",method = RequestMethod.POST)
	public String Signup(@RequestParam("userFname") String ufm,
						 @RequestParam("userLname") String ulm,
						 @RequestParam("userEmail") String eamil,
						 @RequestParam("userPhone") int phone,
						 @RequestParam("userAddress") String address,
						 @RequestParam("userPassword") String pwd1,
						 @RequestParam("userRpassword") String pwd2,
						 Model model,HttpSession session){
		 if(pwd1.equals(pwd2)){
			 User u=new User();
			 System.out.println(ufm);
			 u.setUserAddress(address);
			 u.setUserEmail(eamil);
			 u.setUserFname(ufm);
			 u.setUserLname(ulm);
			 u.setUserPassword(pwd1);
			 u.setUserPhone(phone);
			 
			 this.us.signup(u);
			 session.setAttribute("userid",u.getUserid());
			 return "index";
		 }else{
			 System.out.println("false");
			 return "signup";
		 }
		
	}
	
}
