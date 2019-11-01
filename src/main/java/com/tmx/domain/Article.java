package com.tmx.domain;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter@Getter@ToString
public class Article {
	private Integer article_id;
	private String article_title;
	private String article_context;
	//日期格式化
	@JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8")
	private Date article_time;
	private String article_category;
	
	
}
