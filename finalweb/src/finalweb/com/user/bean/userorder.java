package finalweb.com.user.bean;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="userorder")
public class userorder {
	@Id
	private int id;
	private int userid;
	private String deliverman;
	private String deliveraddress;
	private int deliverphone;
	private int postcode;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getDeliverman() {
		return deliverman;
	}
	public void setDeliverman(String deliverman) {
		this.deliverman = deliverman;
	}
	public String getDeliveraddress() {
		return deliveraddress;
	}
	public void setDeliveraddress(String deliveraddress) {
		this.deliveraddress = deliveraddress;
	}
	public int getDeliverphone() {
		return deliverphone;
	}
	public void setDeliverphone(int deliverphone) {
		this.deliverphone = deliverphone;
	}
	public int getPostcode() {
		return postcode;
	}
	public void setPostcode(int postcode) {
		this.postcode = postcode;
	}
	
	
}
