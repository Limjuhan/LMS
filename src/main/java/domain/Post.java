package domain;

import java.util.Date;

public class Post {
	private String post_id;
	private String author_id;
	private String post_title;
	private String post_content;
	private Date post_created_at;
	private Date post_updated_at;
	private int post_group;
	private int post_group_level;
	private int post_group_step;
	private String post_file;
	private int post_read_count;
	public String getPost_id() {
		return post_id;
	}
	public void setPost_id(String post_id) {
		this.post_id = post_id;
	}
	public String getAuthor_id() {
		return author_id;
	}
	public void setAuthor_id(String author_id) {
		this.author_id = author_id;
	}
	public String getPost_title() {
		return post_title;
	}
	public void setPost_title(String post_title) {
		this.post_title = post_title;
	}
	public String getPost_content() {
		return post_content;
	}
	public void setPost_content(String post_content) {
		this.post_content = post_content;
	}
	public Date getPost_created_at() {
		return post_created_at;
	}
	public void setPost_created_at(Date post_created_at) {
		this.post_created_at = post_created_at;
	}
	public Date getPost_updated_at() {
		return post_updated_at;
	}
	public void setPost_updated_at(Date post_updated_at) {
		this.post_updated_at = post_updated_at;
	}
	public int getPost_group() {
		return post_group;
	}
	public void setPost_group(int post_group) {
		this.post_group = post_group;
	}
	public int getPost_group_level() {
		return post_group_level;
	}
	public void setPost_group_level(int post_group_level) {
		this.post_group_level = post_group_level;
	}
	public int getPost_group_step() {
		return post_group_step;
	}
	public void setPost_group_step(int post_group_step) {
		this.post_group_step = post_group_step;
	}
	public String getPost_file() {
		return post_file;
	}
	public void setPost_file(String post_file) {
		this.post_file = post_file;
	}
	public int getPost_read_count() {
		return post_read_count;
	}
	public void setPost_read_count(int post_read_count) {
		this.post_read_count = post_read_count;
	}
	@Override
	public String toString() {
		return "Post [post_id=" + post_id + ", author_id=" + author_id + ", post_title=" + post_title
				+ ", post_content=" + post_content + ", post_created_at=" + post_created_at + ", post_updated_at="
				+ post_updated_at + ", post_group=" + post_group + ", post_group_level=" + post_group_level
				+ ", post_group_step=" + post_group_step + ", post_file=" + post_file + ", post_read_count="
				+ post_read_count + "]";
	} 
	
}
