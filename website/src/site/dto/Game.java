package site.dto;

import java.io.Serializable;

public class Game implements Serializable {
	
	private static final long serialVersionUID=1L;
	
	private String gameNum;
	private String gname;
	private String link;
	private String description;
	private String filename;
	
	public Game() {
		super();
	}
	
	

	public Game(String gameNum, String gname, String description) {
		this.gameNum = gameNum;
		this.gname = gname;
		this.description = description;
	}

	public String getGameNum() {
		return gameNum;
	}

	public void setGameNum(String gameNum) {
		this.gameNum = gameNum;
	}

	public String getGname() {
		return gname;
	}

	public void setGname(String gname) {
		this.gname = gname;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}
	
	
	
}










