package com.tmx.web.realm;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import com.tmx.domain.User;

import com.tmx.service.UserServiceDao;

public class UserRealm extends AuthorizingRealm{

	@Autowired
	private UserServiceDao userService;
	
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		// TODO Auto-generated method stub
		return null;
	}
	//认证
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		System.out.println("来到了验证的方法了============");
		String username = (String)token.getPrincipal();
		System.out.println("用户名为----" + username);
		//查询用户是否存在
		User user = userService.getUserByName(username);
		if(user == null) {
			return null;
		}
		System.out.println("user--------------------" + user);
		SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(user, user.getUser_password(),this.getName());
		return info;
	}

}
