package com.backEndSystem.login.action;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.backEndSystem.base.action.BaseAction;
import com.backEndSystem.domain.basedata.User;
import com.backEndSystem.login.service.LoginService;

@Controller("loginAction")
@Scope("prototype")
public class LoginAction extends BaseAction<User>{
	@Resource(name="loginService")
	private LoginService loginService;
	
	public String authentication(){
		User user = this.loginService.
						authentication(this.getModel().getUsername(), this.getModel().getPassword());
		if(user==null){//用户名或者密码错误
			this.addActionError("用户名或者密码错误");
			return "login";
		}else{
			this.getSession().setAttribute("user", user);
			//把该用户能够访问到的功能权限放入到session中
			return "index";
		}
	}
}
