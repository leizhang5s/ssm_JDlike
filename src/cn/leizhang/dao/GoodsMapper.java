package cn.leizhang.dao;

import java.util.List;

import cn.leizhang.domain.CartItem;
import cn.leizhang.domain.Goods;


public interface GoodsMapper {

	Goods selectGoodsByID(String id);
	int selectCountGoods();
	List<Goods> selectNewGoods();
	List<Goods> selectPromotionGoods();
	List<Goods> selectSpecialGoods();
	List<Goods> selectGoodsByPageNumber(int pageNumber);
	
}
