package kr.baby.dao;

public class DiaryVO {

	private int diary_seq;
	private String diary_title;
	private String diary_content;
	private String diary_date;
	private String diary_file;
	private String diary_cnt;
	private String diary_emo;
	private String diary_with;
	private String mem_id;
	
	
	public DiaryVO(int diary_seq, String diary_title, String diary_content, String diary_date, String diary_file,
			String diary_cnt, String diary_emo, String diary_with, String mem_id) {
		super();
		this.diary_seq = diary_seq;
		this.diary_title = diary_title;
		this.diary_content = diary_content;
		this.diary_date = diary_date;
		this.diary_file = diary_file;
		this.diary_cnt = diary_cnt;
		this.diary_emo = diary_emo;
		this.diary_with = diary_with;
		this.mem_id = mem_id;
	}


	public int getDiary_seq() {
		return diary_seq;
	}


	public void setDiary_seq(int diary_seq) {
		this.diary_seq = diary_seq;
	}


	public String getDiary_title() {
		return diary_title;
	}


	public void setDiary_title(String diary_title) {
		this.diary_title = diary_title;
	}


	public String getDiary_content() {
		return diary_content;
	}


	public void setDiary_content(String diary_content) {
		this.diary_content = diary_content;
	}


	public String getDiary_date() {
		return diary_date;
	}


	public void setDiary_date(String diary_date) {
		this.diary_date = diary_date;
	}


	public String getDiary_file() {
		return diary_file;
	}


	public void setDiary_file(String diary_file) {
		this.diary_file = diary_file;
	}


	public String getDiary_cnt() {
		return diary_cnt;
	}


	public void setDiary_cnt(String diary_cnt) {
		this.diary_cnt = diary_cnt;
	}


	public String getDiary_emo() {
		return diary_emo;
	}


	public void setDiary_emo(String diary_emo) {
		this.diary_emo = diary_emo;
	}


	public String getDiary_with() {
		return diary_with;
	}


	public void setDiary_with(String diary_with) {
		this.diary_with = diary_with;
	}


	public String getMem_id() {
		return mem_id;
	}


	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}


	@Override
	public String toString() {
		return "DiaryVO [diary_seq=" + diary_seq + ", diary_title=" + diary_title + ", diary_content=" + diary_content
				+ ", diary_date=" + diary_date + ", diary_file=" + diary_file + ", diary_cnt=" + diary_cnt
				+ ", diary_emo=" + diary_emo + ", diary_with=" + diary_with + ", mem_id=" + mem_id + "]";
	}

	
}
