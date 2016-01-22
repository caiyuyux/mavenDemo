package com.backEndSystem.login.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.backEndSystem.domain.basedata.User;
import com.backEndSystem.login.dao.LoginDao;
import com.backEndSystem.login.service.LoginService;

@Service("loginService")
public class LoginServiceImpl implements LoginService{
	@Resource(name="loginDao")
	private LoginDao loginDao;

	@Override
	public User authentication(String username, String password) {
		// TODO Auto-generated method stub
		return this.loginDao.authentication(username, password);
	}
}
