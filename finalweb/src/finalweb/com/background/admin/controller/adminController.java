package finalweb.com.background.admin.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import finalweb.com.background.admin.service.adminService;
import finalweb.com.user.bean.User;

@Controller
@RequestMapping("admin")
public class adminController {
	@Resource
	private adminService ads;
	@RequestMapping(value="/findAll")
	public String findAll(Model model,HttpSession session){
		session.setAttribute("bguser", ads.findAll());
		return "bgadminlist";
	}
	@RequestMapping(value="/findUserbyId")
	public String findById(@RequestParam("id") int id,Model model,HttpSession session){
		session.setAttribute("bguser", ads.findById(id));

		return "bgadminlist";
	}
	@RequestMapping(value="/deleteUser",method=RequestMethod.POST)
	public String delete(@RequestParam("id") int id,Model model,HttpSession session){
		ads.deleteUser(id);
		
		return "bgmain";
	}
	@RequestMapping(value="/addUser",method=RequestMethod.POST)
	public String addUser(@RequestParam("userFname") String Fname,
							@RequestParam("userLname") String Lname,
							@RequestParam("userEmail") String Email,
							@RequestParam("userAddress") String Address,
							@RequestParam("userPassword") String Password,
							@RequestParam("userPhone") int Phone,
							Model model,HttpSession session){
		User u =new User();
		u.setUserAddress(Address);
		u.setUserEmail(Email);
		u.setUserFname(Fname);
		u.setUserLname(Lname);
		u.setUserPassword(Password);
		u.setUserPhone(Phone);
		ads.save(u);
		return "bgmain";
	}
	public String findUser(@RequestParam("id") int id,Model model,HttpSession session){
		
		session.setAttribute("bguser", ads.findUser(id));
		return "edituser";
	}
	
	
	@RequestMapping(value="/editUser")
	public String editUser(@RequestParam("userid")int id,
							@RequestParam("userFname") String Fname,
							@RequestParam("userLname") String Lname,
							@RequestParam("userEmail") String Email,
							@RequestParam("userAddress") String Address,
							@RequestParam("userPassword") String Password,
							@RequestParam("userPhone") int Phone,
							Model model,HttpSession session){
		User u =new User();
		u.setUserid(id);
		u.setUserAddress(Address);
		u.setUserEmail(Email);
		u.setUserFname(Fname);
		u.setUserLname(Lname);
		u.setUserPassword(Password);
		u.setUserPhone(Phone);
		ads.editUser(u);
		return "bgmain";
	}
}
