package controller;

public class menuItem {
	public menuItem(String icon, String title, String linkurl) {
		super();
		this.icon = icon;
		this.title = title;
		this.linkurl = linkurl;
	}
	private String icon;
	private String title;
	private String linkurl;
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getLinkurl() {
		return linkurl;
	}
	public void setLinkurl(String linkurl) {
		this.linkurl = linkurl;
	}
	
	
}
