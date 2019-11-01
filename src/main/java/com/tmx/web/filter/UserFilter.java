package com.tmx.web.filter;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;
import org.apache.shiro.web.util.SavedRequest;
import org.apache.shiro.web.util.WebUtils;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.tmx.util.AjaxResult;

public class UserFilter extends FormAuthenticationFilter {

	/* 认证成功*/
	protected boolean onLoginSuccess(AuthenticationToken token, Subject subject, ServletRequest request,ServletResponse response) throws Exception {
		SavedRequest preUrl = WebUtils.getSavedRequest(request);
		String url = "/";
		AjaxResult result = new AjaxResult();
		result.setMsg("登录成功");
		result.setSuccess(true);
		if(preUrl != null) {
			result.setUrl(preUrl.getRequestUrl());
		}else {
			result.setUrl(url);
		}
		//将结果集转化为json字符串
		String string = new ObjectMapper().writeValueAsString(result);
		//响应结果给浏览器
		response.setCharacterEncoding("utf-8");
		response.getWriter().print(string);
		return false;
	}

	/* 认证失败 */
	protected boolean onLoginFailure(AuthenticationToken token, AuthenticationException e, ServletRequest request,ServletResponse response) {
		AjaxResult result = new AjaxResult();
		result.setSuccess(false);
		//获取异常的名称
		if(e != null) {
			String name = e.getClass().getName();
			if(name.equals(UnknownAccountException.class.getName())) {
				/*用户名不存在*/
				result.setMsg("用户名错误");
			}else if(name.equals(IncorrectCredentialsException.class.getName())) {
				/*密码错误*/
				result.setMsg("密码错误");
			}else {
				/*其他错误*/
				result.setMsg("未知错误");
			}
		}
		String string;
		try {
			string = new ObjectMapper().writeValueAsString(result);
			//响应结果给浏览器
			response.setCharacterEncoding("utf-8");
			response.getWriter().print(string);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		return false;
	}
}
