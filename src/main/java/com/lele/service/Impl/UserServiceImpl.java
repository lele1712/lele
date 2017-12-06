package com.lele.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lele.mapper.UserMapper;
import com.lele.pojo.User;
import com.lele.pojo.UserVo;
import com.lele.pojo.pagebean;
import com.lele.service.UserService;

/**
 错误经不起失败，但是真理却不怕失败。
 @author乐乐
 @2017年12月1日@下午7:54:41
 */
@Service
public class UserServiceImpl implements UserService {

	
	@Autowired
	private UserMapper userMapper;

	/* (non-Javadoc)
	 * @see com.lele.service.UserService#getAllUser()
	 */
	public List<User> getAllUser(pagebean p) {
		// TODO Auto-generated method stub
		
		return userMapper.getAllUser(p);
	}

	/* (non-Javadoc)
	 * @see com.lele.service.UserService#saveUser(com.lele.pojo.User)
	 */
	public void saveUser(User user) {
		// TODO Auto-generated method stub
		userMapper.saveuser(user);
	}

	/* (non-Javadoc)
	 * @see com.lele.service.UserService#removeUser(int[])
	 */
	public void removeUser(UserVo user) {
		// TODO Auto-generated method stub
		userMapper.removeUser(user);
	}

	public void updateUser(User user) {
		// TODO Auto-generated method stub
		userMapper.updateUser(user);
	}
	
}
