package cn.leizhang.domain;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class ShoppingCart {
		private HashMap<String,Integer> GoodsList;
		private int total_Goods;
		private float total_Money;
		
		
		
		public HashMap<String, Integer> getGoodsList() {
			return GoodsList;
		}
		public void setGoodsList(HashMap<String, Integer> goodsList) {
			GoodsList = goodsList;
		}
		public int getTotal_Goods() {
			return total_Goods;
		}
		public void setTotal_Goods(int total_Goods) {
			this.total_Goods = total_Goods;
		}
		public float getTotal_Money() {
			return total_Money;
		}
		public void setTotal_Money(float total_Money) {
			this.total_Money = total_Money;
		}
		
		
}
