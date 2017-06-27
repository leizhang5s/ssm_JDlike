package cn.leizhang.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.leizhang.domain.Goods;
import cn.leizhang.service.GoodsService;

@Controller
public class GoodsController {
	@Autowired
	private GoodsService goodsService;
	@RequestMapping(value="/index")
	public String Index(Model model,HttpSession Session)
	{
		
		List<Goods> list=goodsService.selectRandomGoods();
		model.addAttribute("goodsList",list);
		List<Goods> newGoodsList=goodsService.selectNewGoods();
		model.addAttribute("newGoodsList",newGoodsList);
		List<Goods> promotionGoods=goodsService.selectPromotionGoods();
		Session.setAttribute("promotionGoods", promotionGoods);
		return "index";
	}
	//特别商品
	@RequestMapping(value="/special")
	public String special(Model model)
	{
		List<Goods> list=goodsService.selectSpecialGoods();
		model.addAttribute("specialgoods",list);
		return "special";
	}
	//跳转商品详情页面
	@RequestMapping(value="ShowDetail")
	public String showDetail(Model model,String id)
	{
		Goods good=goodsService.selectGoodsById(id);
		model.addAttribute("goods", good);
		return "details";
	}
	@RequestMapping(value="books")
	public String books(Model model,String currentPage,String action)
	{	
		//从服务器端获得的当前页码
		int CurrentpageNumber=Integer.parseInt(currentPage);
		//开始查数据库记录的位置
		int BeginPosition;
		//数据库中总页数
		int total_num=(int) Math.ceil(goodsService.seletCountGoods()/3.0);
		if(action.equals("lastPage")&&CurrentpageNumber>1)
		{
			BeginPosition=(CurrentpageNumber-2)*3;
			//当前页码
			model.addAttribute("PageNumber",CurrentpageNumber-1);
		}
		else if(action.equals("nextPage")&&CurrentpageNumber<total_num)
		{
			BeginPosition=CurrentpageNumber*3;
			//当前页码
			model.addAttribute("PageNumber",CurrentpageNumber+1);
		}
		else if(action.equals("keep"))
		{
			BeginPosition=CurrentpageNumber*3;
			//当前页码
			model.addAttribute("PageNumber",CurrentpageNumber+1);
		}
		else
		{
			BeginPosition=(CurrentpageNumber-1)*3;
			//当前页码
			model.addAttribute("PageNumber",CurrentpageNumber);
		}
		List<Goods> goods=goodsService.selectGoodsByPageNumber(BeginPosition);
		model.addAttribute("goods", goods);
		
		//共多少页
		
		model.addAttribute("total_num",total_num);
		return "books";
	}
}
