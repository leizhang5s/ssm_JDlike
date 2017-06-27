package cn.leizhang.dao;

import java.util.List;

import cn.leizhang.domain.FeedBack;

public interface FeedBackMapper {

	List<FeedBack> SelectLeaveMessage();

	void saveFeedBack(FeedBack feedback);

}
