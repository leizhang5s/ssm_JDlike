package cn.leizhang.dao;

import cn.leizhang.domain.RegistUserVo;
import cn.leizhang.domain.User;



public interface UserMapper {
	
	public User selectUserByName(String username);
	public void updateUserById(User user);
	public User selectUserById(long userid);
	public void InserUser(RegistUserVo user);
	
}
