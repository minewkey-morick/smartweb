package org.smartweb.day6.domain;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {

	public BoardVO() {}
	
	private Long bno;
	private String title;
	private String content;
	private String writer;
	private Date regdate;
	private Date updateDate;
}
