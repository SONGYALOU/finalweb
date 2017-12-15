package finalweb.com.user.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import finalweb.com.user.Dao.UserDao;
import finalweb.com.user.bean.User;

@Component
@Service
@Transactional
public class Userservice {

	@Resource
	private UserDao ud;
	//登录
	public User login(int id, String pwd) {
		User u = this.ud.findById(id);
		if (u != null) {
			if (u.getUserPassword().equals(pwd)) {
				
				return u;
			} else {
				System.out.println("aaa");
				return null;
			}
		} else {
			System.out.println("bbb");
			return null;
		}
	}
	//注册
	public void signup(User u){
		
		this.ud.save(u);
	}
}
