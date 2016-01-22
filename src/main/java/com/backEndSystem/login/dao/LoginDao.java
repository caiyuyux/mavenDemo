package com.backEndSystem.login.dao;

import com.backEndSystem.domain.basedata.User;

public interface LoginDao {
	public User authentication(String username, String password);
}
