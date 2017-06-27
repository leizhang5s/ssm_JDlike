package cn.leizhang.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONObject;

import org.apache.commons.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.leizhang.domain.CartItem;
import cn.leizhang.domain.ShoppingCart;
import cn.leizhang.service.ShoppingCartService;

@Controller
public class CartController {
	@Autowired
	private ShoppingCartService shoppingCartService;

	@RequestMapping(value = "addtoCart.action")
	public String addCart(String id, HttpServletResponse response,
			HttpServletRequest request,HttpSession session) {
		String cookievalue = "null";
		ShoppingCart sc = new ShoppingCart();
		Cookie[] cookies = request.getCookies();
		Cookie cookie = shoppingCartService.cookieSearch(cookies);
		byte[] by = null;

		if (cookie != null) {
			cookievalue = Base64.encodeBase64String(shoppingCartService
					.addShoppingCart(cookie, id).getBytes());
			cookie.setValue(cookievalue);
			cookie.setMaxAge(60 * 60 * 24 * 6);// 设置cookie过期时间为6天
			response.addCookie(cookie);
			by = Base64.decodeBase64(cookie.getValue().getBytes());

		} else {
			Cookie newcookie = new Cookie("shoppingcart", "initial");
			String cookievalue2 = Base64.encodeBase64String(shoppingCartService
					.addShoppingCart(newcookie, id).getBytes());
			newcookie.setValue(cookievalue2);
			newcookie.setMaxAge(60 * 60 * 24 * 6);// 设置cookie过期时间为6天
			response.addCookie(newcookie);
			by = Base64.decodeBase64(newcookie.getValue().getBytes());

		}
		// 将cookie中的值转换成对象准备回传。

		JSONObject scc = JSONObject.fromObject(new String(by));
		ShoppingCart shopcart = (ShoppingCart) JSONObject.toBean(scc,
				ShoppingCart.class);
		session.setAttribute("shoppingcart2", shopcart);
		List<CartItem> cartItem = shoppingCartService.generateCartItem(shopcart);
	
		session.setAttribute("cartItem", cartItem);
		return "cart";
	}

	// 跳转购物车
	@RequestMapping(value = "/cart")
	public String cart(HttpSession session) {
		if(session.getAttribute("shoppingcart2")!=null)
		{
		ShoppingCart shopcart=(ShoppingCart) session.getAttribute("shoppingcart2");
		
		List<CartItem> cartItem = shoppingCartService.generateCartItem(shopcart);
		session.setAttribute("cartItem", cartItem);
		}
		return "cart";
	}
	@RequestMapping(value="/addGoods")
	public void addGoods(HttpServletRequest request,HttpServletResponse response,HttpSession session,String id) throws IOException
	{	
		Cookie[] cookies = request.getCookies();
		Cookie cookie = shoppingCartService.cookieSearch(cookies);
		String cookievalue = Base64.encodeBase64String(shoppingCartService
				.addShoppingCart(cookie, id).getBytes());
		cookie.setValue(cookievalue);
		cookie.setMaxAge(60 * 60 * 24 * 6);// 设置cookie过期时间为6天
		response.addCookie(cookie);
		byte [] by =Base64.decodeBase64(cookie.getValue().getBytes());
		JSONObject scc = JSONObject.fromObject(new String(by));
		ShoppingCart shopcart = (ShoppingCart) JSONObject.toBean(scc,
				ShoppingCart.class);
		session.setAttribute("shoppingcart2", shopcart);
		List<CartItem> cartItem = shoppingCartService.generateCartItem(shopcart);
	
		session.setAttribute("cartItem", cartItem);
		
		//return null;
	}
	@RequestMapping(value="/subGoods")
	public void subGoods(HttpServletRequest request,HttpServletResponse response,HttpSession session,String id) throws IOException
	{	
		Cookie[] cookies = request.getCookies();
		Cookie cookie = shoppingCartService.cookieSearch(cookies);
		String cookievalue = Base64.encodeBase64String(shoppingCartService
				.subShoppingCart(cookie, id).getBytes());
		cookie.setValue(cookievalue);
		cookie.setMaxAge(60 * 60 * 24 * 6);// 设置cookie过期时间为6天
		response.addCookie(cookie);
		byte [] by =Base64.decodeBase64(cookie.getValue().getBytes());
		JSONObject scc = JSONObject.fromObject(new String(by));
		ShoppingCart shopcart = (ShoppingCart) JSONObject.toBean(scc,
				ShoppingCart.class);
		session.setAttribute("shoppingcart2", shopcart);
		List<CartItem> cartItem = shoppingCartService.generateCartItem(shopcart);
	
		session.setAttribute("cartItem", cartItem);
		
		//return null;
	}
	@RequestMapping(value="/removeGoods")
	public String removeGoods(HttpServletRequest request,HttpServletResponse response,HttpSession session,String id)
	{
		Cookie[] cookies = request.getCookies();
		Cookie cookie = shoppingCartService.cookieSearch(cookies);
		String cookievalue = Base64.encodeBase64String(shoppingCartService
				.subShoppingCartById(cookie, id).getBytes());
		cookie.setValue(cookievalue);
		cookie.setMaxAge(60 * 60 * 24 * 6);// 设置cookie过期时间为6天
		response.addCookie(cookie);
		byte [] by =Base64.decodeBase64(cookie.getValue().getBytes());
		JSONObject scc = JSONObject.fromObject(new String(by));
		ShoppingCart shopcart = (ShoppingCart) JSONObject.toBean(scc,
				ShoppingCart.class);
		session.setAttribute("shoppingcart2", shopcart);
		List<CartItem> cartItem = shoppingCartService.generateCartItem(shopcart);
	
		session.setAttribute("cartItem", cartItem);
		return "cart";
	}
	
}
