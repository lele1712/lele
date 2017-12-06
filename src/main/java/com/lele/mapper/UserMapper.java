package com.lele.mapper;

import java.util.List;

import com.lele.pojo.User;
import com.lele.pojo.UserVo;
import com.lele.pojo.pagebean;

/**
 错误经不起失败，但是真理却不怕失败。
 @author乐乐
 @2017年12月1日@下午7:55:19
 */
public interface UserMapper {

	/*
	  你的孤独，虽败犹荣。
	 @author乐乐
	 @2017年12月1日@下午8:00:44
	 */
	List<User> getAllUser(pagebean p);

	/*
	  你的孤独，虽败犹荣。
	 @author乐乐
	 @2017年12月3日@下午7:46:52
	 */
	void saveuser(User user);

	/*
	  你的孤独，虽败犹荣。
	 @author乐乐
	 @2017年12月3日@下午8:36:31
	 */
	void removeUser(UserVo user);


	/*
	  你的孤独，虽败犹荣。
	 @author乐乐
	 @2017年12月4日@下午4:38:24
	 */
	void updateUser(User user);

}
