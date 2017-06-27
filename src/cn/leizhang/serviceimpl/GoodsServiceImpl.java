package cn.leizhang.serviceimpl;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Random;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;

import cn.leizhang.dao.GoodsMapper;
import cn.leizhang.domain.CartItem;
import cn.leizhang.domain.Goods;

import cn.leizhang.service.GoodsService;

public class GoodsServiceImpl implements GoodsService{
	
	@Autowired
	private GoodsMapper goodsMapper;
	public List<Goods> selectRandomGoods() {
		int num=goodsMapper.selectCountGoods();
		Random rd=new Random();
		ArrayList<Goods> arr=new ArrayList<Goods>();
		Set<Integer> set=new HashSet<Integer>();
		while(set.size()<2)
		{	
			int id=rd.nextInt(num)+1;
			set.add(id);
			//System.out.println(id);
		}
		for(int i:set)
		{
			Goods good=goodsMapper.selectGoodsByID(String.valueOf(i));
			arr.add(good);
		}
		
		
		return arr;
	}
	@Override
	public List<Goods> selectNewGoods() {
		List<Goods> goods=goodsMapper.selectNewGoods();
		
		return goods;
	}
	@Override
	public List<Goods> selectPromotionGoods() {
		
		return goodsMapper.selectPromotionGoods();
	}
	@Override
	public List<Goods> selectSpecialGoods() {
		
		return goodsMapper.selectSpecialGoods();
	}
	@Override
	public Goods selectGoodsById(String id) {
		
		return goodsMapper.selectGoodsByID(id);
	}
	@Override
	public List<Goods> selectGoodsByPageNumber(int pageNumber) {
		
		return goodsMapper.selectGoodsByPageNumber(pageNumber);
	}
	@Override
	public int seletCountGoods() {
		
		return goodsMapper.selectCountGoods();
	}
	
		
}
