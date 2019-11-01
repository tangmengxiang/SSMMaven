package com.tmx.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.tmx.domain.User;


public interface UserMapper {
	public void addUser(User user);

	/* public List<User> getUser(User user); */
	public List<User> getUser(@Param("user_name")String username,@Param("user_password")String password);

	public User getUserByName(String username);
}
