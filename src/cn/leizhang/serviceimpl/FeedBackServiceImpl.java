package cn.leizhang.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import cn.leizhang.dao.FeedBackMapper;
import cn.leizhang.domain.FeedBack;
import cn.leizhang.service.FeedBackService;

public class FeedBackServiceImpl implements FeedBackService{
		@Autowired
		private FeedBackMapper feedBackMapper;
		public List<FeedBack> SelectLeaveMessage()
		{
			return feedBackMapper.SelectLeaveMessage();
			
		}
		@Override
		public void saveFeedBack(FeedBack feedback) {
			 feedBackMapper.saveFeedBack(feedback);
			
		}
}
