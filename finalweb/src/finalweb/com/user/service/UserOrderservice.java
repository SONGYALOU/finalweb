package finalweb.com.user.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import finalweb.com.user.Dao.UserOrderDao;
import finalweb.com.user.bean.userorder;
@Component
@Repository
@Transactional
public class UserOrderservice {
	@Resource
	private UserOrderDao uod;
	
	public  List<userorder> findById(int id){
		System.out.println("2");
		List<userorder> list = uod.findAll();
		List<userorder> temp = new ArrayList<userorder>();
		for(int i=0;i<list.size();i++){
			if(list.get(i).getUserid()==id){
				temp.add(list.get(i));
				
			}
		}
		return temp;
	}
	
	public void save(userorder uo){
		uod.save(uo);
	}
}
