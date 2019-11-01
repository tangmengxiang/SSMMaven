package com.tmx.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.tmx.domain.Article;
import com.tmx.service.ArticleService;

@Controller
@SessionAttributes(value = "singleArticlDetails")
public class BlogController {
	
	@Autowired
	private ArticleService articleService;
	
	@RequestMapping("/blog")
	public String blog() {
		return "/WEB-INF/views/blog/blog";
	}
	
	@RequestMapping("/showArticleDetails")
	public String showArticleDetails(String article_id,Model model) {
		System.out.println("article_id---" + article_id);
		//查出单篇文章详情
		Article article = articleService.getArticleDetails(article_id);
		model.addAttribute("singleArticlDetails", article);
		return "/WEB-INF/views/blog/showArticleDetails";
	}
	/*跳转后台管理界面*/
	@RequestMapping("/bkManage")
	public String bkManage() {
		return "/WEB-INF/views/bkManage/bkManageMain";
	}
	/*显示文章列表*/
	@RequestMapping("/BKArticlePage")
	public String BKArticlePage() {
		return "/WEB-INF/views/bkManage/bkArticlePage";
	}
	/*删除文章*/
	@RequestMapping("/deleteArticle")
	public String deleteArticle(String article_id) {
		System.out.println("能够来到并接受到文章的ID" + article_id);
		articleService.deleteArticle(article_id);
		return "/WEB-INF/views/bkManage/bkArticlePage";
	}
	
	
}
