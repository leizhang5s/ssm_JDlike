package cn.leizhang.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;

import cn.leizhang.domain.CartItem;
import cn.leizhang.domain.Goods;
import cn.leizhang.domain.ShoppingCart;

public interface ShoppingCartService {
	public String addShoppingCart(Cookie cookie,String id);
	public Cookie cookieSearch(Cookie[] cookie);
	public ArrayList<Goods> getGoods(Map<String, Integer> hsm);
	public String subShoppingCart(Cookie cookie, String id);
	public String subShoppingCartById(Cookie cookie, String id);
	public List<CartItem> generateCartItem(ShoppingCart shopcart);
	
}
