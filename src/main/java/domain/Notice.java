package domain;

import java.util.Date;

public class Notice {
	private String notice_id;
	private String writer_id;
	private String notice_title;
	private String notice_content;
	private Date notice_created_at;
	private Date  notice_updated_at;
	private String notice_file;
	private int notice_read_count;
	
	public String getNotice_id() {
		return notice_id;
	}
	public void setNotice_id(String notice_id) {
		this.notice_id = notice_id;
	}
	public String getWriter_id() {
		return writer_id;
	}
	public void setWriter_id(String writer_id) {
		this.writer_id = writer_id;
	}
	public String getNotice_title() {
		return notice_title;
	}
	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}
	public String getNotice_content() {
		return notice_content;
	}
	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}
	public Date getNotice_created_at() {
		return notice_created_at;
	}
	public void setNotice_created_at(Date notice_created_at) {
		this.notice_created_at = notice_created_at;
	}
	public Date getNotice_updated_at() {
		return notice_updated_at;
	}
	public void setNotice_updated_at(Date notice_updated_at) {
		this.notice_updated_at = notice_updated_at;
	}
	public String getNotice_file() {
		return notice_file;
	}
	public void setNotice_file(String notice_file) {
		this.notice_file = notice_file;
	}
	public int getNotice_read_count() {
		return notice_read_count;
	}
	public void setNotice_read_count(int notice_read_count) {
		this.notice_read_count = notice_read_count;
	}
	@Override
	public String toString() {
		return "Notice [notice_id=" + notice_id + ", writer_id=" + writer_id + ", notice_title=" + notice_title
				+ ", notice_content=" + notice_content + ", notice_created_at=" + notice_created_at
				+ ", notice_updated_at=" + notice_updated_at + ", notice_file=" + notice_file + ", notice_read_count="
				+ notice_read_count + "]";
	}
	
	
}
