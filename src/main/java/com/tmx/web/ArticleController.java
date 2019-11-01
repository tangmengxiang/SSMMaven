package com.tmx.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tmx.domain.Article;
import com.tmx.service.ArticleService;

@Controller
public class ArticleController {
	
	@Autowired
	private ArticleService articleService;
	
	/*得到所有的文章*/
	@RequestMapping("/getAllArticle")
	@ResponseBody
	public List<Article> getAllArticle() {
		List<Article> article = articleService.getAllArticle();
		return article;
	}
	
	/*准备添加文章*/
	@RequestMapping("/readyAddArticle")
	public String readyAddArticle(String article_id) {
		articleService.deleteArticle(article_id);
		return "/WEB-INF/views/bkManage/readyAddArticle";
	}
	
	/*添加文章*/
	@RequestMapping("/addArticle")
	public String addArticle(Article article) {
		articleService.addArticle(article);
		return "/WEB-INF/views/bkManage/bkArticlePage";
	}
	
	/*准备编辑添加文章*/
	@RequestMapping("/readyArticle")
	public String readyArticle(String article_id) {
		articleService.getArticleDetails(article_id);
		return null;
	}
}
