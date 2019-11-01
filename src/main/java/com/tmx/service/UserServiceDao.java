package com.tmx.service;

import java.util.List;


import com.tmx.domain.User;

public interface UserServiceDao {
	public void firstService(String name);

	public List<User> getUser(User user);

	public User getUserByName(String username);
	
	
}
