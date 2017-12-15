package finalweb.com.product.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import finalweb.com.product.Dao.ProductDao;

import finalweb.com.product.bean.Product;
import finalweb.com.product.bean.ProductColor;
import finalweb.com.product.bean.ProductSize;


@Component
@Service
@Transactional
public class ProductService {
		@Autowired
		private ProductDao pd;
		
		public List<Product> findAll(){
			return pd.finAll();
		}
		
		public List<Product> findByPage(int pagenumber){
			List<Product> list= pd.findByPage();
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
			return pd.getSumPage();
		}
		
		public Product findById(int id){
			return pd.findById(id);
		}
		public List<Product> randomProduct(){
			List<Product> list= pd.finAll();
			int k=list.size();
			System.out.println(k);
			List<Product> temp= new ArrayList<Product>();
			for(int i=0;i<8;i++){
				int j=(int)(Math.random()*k);
				System.out.println(j);
			temp.add(list.get(j));
			}
			return temp;
		}
		public List<ProductColor> findColor(int id){
			List<ProductColor> list= pd.findColor();
			List<ProductColor> temp= new ArrayList<ProductColor>();
			for(int i=0;i<list.size();i++){
				if(list.get(i).getProductid()==id){
					temp.add(list.get(i));
				}
			}
		return temp;
		}
		public List<ProductSize> findSize(int id){
			List<ProductSize> list = pd.findSize();
			List<ProductSize> temp = new ArrayList<ProductSize>();
			for(int i=0;i<list.size();i++){
				if(list.get(i).getProductid()==id){
					temp.add(list.get(i));
				}
			}
			return temp;
		}
		
		
}
