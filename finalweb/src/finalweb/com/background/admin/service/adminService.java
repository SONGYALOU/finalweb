package finalweb.com.background.admin.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import finalweb.com.background.admin.dao.adminDao;
import finalweb.com.user.bean.User;

@Component
@Transactional
@Service
public class adminService {
	@Resource
	public adminDao ad;

	public List<User> findAll(){
		return ad.findAll();
	}
	
	public List<User> findById(int id){
		List<User> list = ad.findAll();
		List<User> temp = new ArrayList<User>();
		for(int i=0;i<list.size();i++){
			if(list.get(i).getUserid()==id){
				temp.add(list.get(i));
			}
		}
		return temp;
	}
	public void deleteUser(int id){
		ad.deleteUser(id);
	}
	public void save(User u){
		ad.save(u);
	}
	public User findUser(int id){
		List<User> list = ad.findAll();
		User u=new User();
		for(int i=0;i<list.size();i++){
			if(list.get(i).getUserid()==id){
				u=list.get(i);
			}
		}
		return u;
	}
	public void editUser(User u){
		ad.update(u);
	}
}
