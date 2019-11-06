package com.tmx.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tmx.domain.Article;
import com.tmx.mapper.ArticleMapper;
import com.tmx.service.ArticleService;

@Service
@Transactional
public class ArticleServiceImpl implements ArticleService{

	@Autowired
	private ArticleMapper articleMapper;
	
	@Override
	public List<Article> getAllArticle() {
		return articleMapper.getAllArticle();
	}
	/*获得单篇文章的详情*/
	@Override
	public Article getArticleDetails(String article_id) {
		return articleMapper.getArticleDetails(article_id);
	}
	/*删除文章*/
	@Override
	public void deleteArticle(String article_id) {
		articleMapper.deleteArticle(article_id);
	}
	@Override
	public void addArticle(Article article) {
		articleMapper.addArticle(article);
	}
	@Override
	public void editArticleFinshed(Article article) {
		articleMapper.editArticle(article);
	}
	/* 分类查找文章*/
	@Override
	public List<Article> getArticleByCategory(String category) {
		return articleMapper.getArticleByCategory(category);
	}
	@Override
	public List<Article> getArticleByTime(String time) {
		return articleMapper.getArticleByTime(time);
	}

}
