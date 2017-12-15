package finalweb.com.background.bgorder.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import finalweb.com.background.bgorder.dao.bgorderDao;
import finalweb.com.order.Dao.orderDao;
import finalweb.com.order.bean.order;

@Component
@Transactional
@Service
public class bgorderService {
	@Resource
	public bgorderDao bgod;

	
	public List<order> findAll(){
		return bgod.findAll();

	}
	public List<order> findById(int id){
		List<order> list=bgod.findAll();
		List<order> temp=new ArrayList<order>();
		for(int i=0;i<list.size();i++){
			if(list.get(i).getUserid()==id){
				temp.add(list.get(i));
			}
		}
		return temp;
	}
	public void deleteOrder(int id){
		bgod.deleteOrder(id);
	}
}
