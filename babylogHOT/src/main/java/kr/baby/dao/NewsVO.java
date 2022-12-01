package kr.baby.dao;

public class NewsVO {
	
	private int nn_seq;
	private String nn_title;
	private String nn_content;
	private String nn_date;
	private String nn_file;
	private String nn_cnt;
	private String nn_type;
	private String mem_id;
	public NewsVO(int nn_seq, String nn_title, String nn_content, String nn_date, String nn_file, String nn_cnt,
			String nn_type, String mem_id) {
		super();
		this.nn_seq = nn_seq;
		this.nn_title = nn_title;
		this.nn_content = nn_content;
		this.nn_date = nn_date;
		this.nn_file = nn_file;
		this.nn_cnt = nn_cnt;
		this.nn_type = nn_type;
		this.mem_id = mem_id;
	}
	public int getNn_seq() {
		return nn_seq;
	}
	public void setNn_seq(int nn_seq) {
		this.nn_seq = nn_seq;
	}
	public String getNn_title() {
		return nn_title;
	}
	public void setNn_title(String nn_title) {
		this.nn_title = nn_title;
	}
	public String getNn_content() {
		return nn_content;
	}
	public void setNn_content(String nn_content) {
		this.nn_content = nn_content;
	}
	public String getNn_date() {
		return nn_date;
	}
	public void setNn_date(String nn_date) {
		this.nn_date = nn_date;
	}
	public String getNn_file() {
		return nn_file;
	}
	public void setNn_file(String nn_file) {
		this.nn_file = nn_file;
	}
	public String getNn_cnt() {
		return nn_cnt;
	}
	public void setNn_cnt(String nn_cnt) {
		this.nn_cnt = nn_cnt;
	}
	public String getNn_type() {
		return nn_type;
	}
	public void setNn_type(String nn_type) {
		this.nn_type = nn_type;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	@Override
	public String toString() {
		return "NewsVO [nn_seq=" + nn_seq + ", nn_title=" + nn_title + ", nn_content=" + nn_content + ", nn_date="
				+ nn_date + ", nn_file=" + nn_file + ", nn_cnt=" + nn_cnt + ", nn_type=" + nn_type + ", mem_id="
				+ mem_id + "]";
	}
	
	
	
	
}
