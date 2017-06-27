package cn.leizhang.service;

import java.util.List;


import cn.leizhang.domain.User;
import cn.leizhang.domain.RegistUserVo;

public interface UserService {
	public User userLogin(User user);

	public void updateUser(User user);
	public User selectUserByid(long userid);

	public boolean existUser(RegistUserVo user);

	public void regist(RegistUserVo user);
	
}
