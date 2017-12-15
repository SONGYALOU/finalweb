package finalweb.com.background.bgorder.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import finalweb.com.background.bgorder.service.bgorderService;

@Controller
@RequestMapping("bgorder")
public class bgordercontroller {
	@Resource
	private bgorderService bgos;
	@RequestMapping(value="/findAll")
	public String findAll(Model model,HttpSession session){
		session.setAttribute("bgorder", bgos.findAll());
		
		return "bgorderlist";
	}
	@RequestMapping(value="/findOrderbyId")
	public String findOrderById(@RequestParam("id") int id,Model model,HttpSession session){
		session.setAttribute("bgorder", bgos.findById(id));
		return "bgorderlist";
	}
	@RequestMapping(value="/deleteOrder")
	public String delete (@RequestParam("id") int id,Model model,HttpSession session){
		bgos.deleteOrder(id);
		return "bgmain";
	}
}
