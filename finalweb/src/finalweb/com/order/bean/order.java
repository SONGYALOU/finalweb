package finalweb.com.order.bean;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="orders")
public class order {
	@Id
	private int id;
	private int userid;
	private int payway;
	private int orderuserid;
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
	public int getPayway() {
		return payway;
	}
	public void setPayway(int payway) {
		this.payway = payway;
	}
	public int getOrderuserid() {
		return orderuserid;
	}
	public void setOrderuserid(int orderuserid) {
		this.orderuserid = orderuserid;
	}

	
}
