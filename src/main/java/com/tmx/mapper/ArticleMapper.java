package com.tmx.mapper;

import java.util.List;

import com.tmx.domain.Article;

public interface ArticleMapper {
	public List<Article> getAllArticle();
	/*获得单篇文章的详情*/
	public Article getArticleDetails(String article_id);
	public void deleteArticle(String article_id);
	public void addArticle(Article article);
	public void editArticle(Article article);
	/* 分类查找文章*/
	public List<Article> getArticleByCategory(String category);
	/*根据时间查找文章*/
	public List<Article> getArticleByTime(String time); 
}
