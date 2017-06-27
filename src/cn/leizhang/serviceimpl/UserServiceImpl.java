package cn.leizhang.serviceimpl;



import org.springframework.beans.factory.annotation.Autowired;

import cn.leizhang.dao.UserMapper;

import cn.leizhang.domain.RegistUserVo;
import cn.leizhang.domain.User;

import cn.leizhang.service.UserService;

public class UserServiceImpl implements UserService{

	@Autowired
	private UserMapper userMapper;
	public User userLogin(User user) {
		User user2=userMapper.selectUserByName(user.getUsername());
		if(user2!=null&&user2.getPassword_().equals(user.getPassword_()))
		{
			return user2;
		}
		
		return user2;
	}
	@Override
	public void updateUser(User user) {
		userMapper.updateUserById(user);
	}
	@Override
	public User selectUserByid(long userid) {
		
		return userMapper.selectUserById(userid);
	}
	@Override
	public boolean existUser(RegistUserVo user) {
		
		User user2=userMapper.selectUserByName(user.getUsername());
		if(user2!=null)
			return true;
		return false;
	}
	@Override
	public void regist(RegistUserVo user) {
		
		userMapper.InserUser(user);
		
	}
	
	
		
		
}
