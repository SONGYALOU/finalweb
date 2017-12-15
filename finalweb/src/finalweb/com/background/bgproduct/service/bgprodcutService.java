package finalweb.com.background.bgproduct.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import finalweb.com.background.bgproduct.dao.bgproductDao;
import finalweb.com.product.bean.Product;

@Component
@Service
@Transactional
public class bgprodcutService {

	@Resource
	private bgproductDao bgpd;
	
	public List<Product> findAll(){
		return bgpd.findAll();
	}
	
	public void save(Product p){
		bgpd.save(p);
	}
	
	public List<Product> findById(int id){
//		return bgpd.findbyId(id);
		List<Product> list= bgpd.findAll();
		List<Product> temp=new ArrayList<Product>();
		for(int i=0;i<list.size();i++){
			if(list.get(i).getProductid()==id){
				temp.add(list.get(i));
			}
		}
		return temp;
	}
	public void deleteProduct(int id){
		bgpd.deleteProduct(id);
	}
	public void editProduct(Product p,int id){
		bgpd.update(p, id);
	}
	public List<Product> findByPage(int pagenumber){
		List<Product> list= bgpd.findByPage();
		 List<Product> temp= new ArrayList<Product>();
		  int sumpage=list.size();
		  int maxpage=sumpage/12+1;
		  if(pagenumber== maxpage){
			  for(int i=0;i<((sumpage-(maxpage-1)*12));i++){

				  temp.add(list.get((maxpage-1)*12+i));
			  }
		  }
		  if(pagenumber< maxpage){
			  for(int i=0;i<12;i++){
				 temp.add(list.get((pagenumber-1)*12+i)); 
			  }
			  
		  }
		  return temp;

	}
	public int getSumPage(){
		return bgpd.getSumPage();
	}
}
