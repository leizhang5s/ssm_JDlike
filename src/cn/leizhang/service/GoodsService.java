package cn.leizhang.service;

import java.util.List;

import cn.leizhang.domain.CartItem;
import cn.leizhang.domain.Goods;



public interface GoodsService {
	public List<Goods> selectRandomGoods();
	public List<Goods> selectNewGoods();
	public List<Goods> selectPromotionGoods();
	public List<Goods> selectSpecialGoods();
	public Goods selectGoodsById(String id);
	public List<Goods> selectGoodsByPageNumber(int pageNumber);
	public int seletCountGoods();
	
}
