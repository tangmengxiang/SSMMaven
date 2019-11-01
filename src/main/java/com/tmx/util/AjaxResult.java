package com.tmx.util;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter@Getter@ToString
public class AjaxResult {
	private String msg;
	private Boolean success;
	private String url;
}
