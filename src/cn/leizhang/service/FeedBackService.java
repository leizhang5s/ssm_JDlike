package cn.leizhang.service;

import java.util.List;

import cn.leizhang.domain.FeedBack;

public interface FeedBackService {
	public List<FeedBack> SelectLeaveMessage();

	public void saveFeedBack(FeedBack feedback);
}
