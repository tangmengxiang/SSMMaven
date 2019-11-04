package com.tmx.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.tmx.domain.Article;
import com.tmx.service.ArticleService;

@Controller
@SessionAttributes(value = "editArticle")
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
	
	/*准备编辑文章*/
	@RequestMapping("/readyArticle")
	public String readyArticle(String article_id,Model model) {
		Article article = articleService.getArticleDetails(article_id);
		model.addAttribute("editArticle", article);
		return "/WEB-INF/views/bkManage/readyEditArticle";
	}
	
	/*编辑文章完成*/
	@RequestMapping("/editArticleFinshed")
	public String editArticleFinshed(Article article) {
		articleService.editArticleFinshed(article);
		return "/WEB-INF/views/bkManage/bkArticlePage";
	}
}
