package cn.leizhang.domain;

public class CartItem {
	private float goodsprice;
	private String photo;
	private String goodsname;
	private Integer subtotal_num;
	private Float subtotal_money;
	private String goodsid;
	
	public String getGoodsid() {
		return goodsid;
	}
	public void setGoodsid(String goodsid) {
		this.goodsid = goodsid;
	}
	public float getGoodsprice() {
		return goodsprice;
	}
	public void setGoodsprice(float goodsprice) {
		this.goodsprice = goodsprice;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getGoodsname() {
		return goodsname;
	}
	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}
	public Integer getSubtotal_num() {
		return subtotal_num;
	}
	public void setSubtotal_num(Integer subtotal_num) {
		this.subtotal_num = subtotal_num;
	}
	public Float getSubtotal_money() {
		return subtotal_money;
	}
	public void setSubtotal_money(Float subtotal_money) {
		this.subtotal_money = subtotal_money;
	}

}
