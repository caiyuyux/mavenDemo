package com.backEndSystem.login.service;

import com.backEndSystem.domain.basedata.User;

public interface LoginService {
	public User authentication(String username, String password);
}
