package finalweb.com.product.bean;



import javax.persistence.Entity;

import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="product")
public class Product {

	
	@Id
	private int productid;
	private String productname;
	private int productprice;
	private String productintroduction;
	private int prodcutnum;
	private String productimg;
	public int getProductid() {
		return productid;
	}
	public void setProductid(int productid) {
		this.productid = productid;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public int getProductprice() {
		return productprice;
	}
	public void setProductprice(int productprice) {
		this.productprice = productprice;
	}
	public String getProductintroduction() {
		return productintroduction;
	}
	public void setProductintroduction(String productintroduction) {
		this.productintroduction = productintroduction;
	}
	public int getProdcutnum() {
		return prodcutnum;
	}
	public void setProdcutnum(int prodcutnum) {
		this.prodcutnum = prodcutnum;
	}
	public String getProductimg() {
		return productimg;
	}
	public void setProductimg(String productimg) {
		this.productimg = productimg;
	}
	
	
	
}
