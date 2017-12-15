package finalweb.com.product.bean;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="productcolor")
public class ProductColor {
	@Id
	private int id;
	private String color;
	private int productid; 
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProductcolor() {
		return color;
	}
	public void setProductcolor(String productcolor) {
		this.color = productcolor;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public int getProductid() {
		return productid;
	}
	public void setProductid(int productid) {
		this.productid = productid;
	}

	
}
