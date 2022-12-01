package kr.baby.dao;

public class QuestionVO {

	private int q_seq;
	private String q_title;
	private String q_content;
	private String q_date;
	private String q_updatedate;
	private String q_file;
	private String q_cnt;
	private String mem_id;
	public QuestionVO(int q_seq, String q_title, String q_content, String q_date, String q_updatedate, String q_file,
			String q_cnt, String mem_id) {
		super();
		this.q_seq = q_seq;
		this.q_title = q_title;
		this.q_content = q_content;
		this.q_date = q_date;
		this.q_updatedate = q_updatedate;
		this.q_file = q_file;
		this.q_cnt = q_cnt;
		this.mem_id = mem_id;
	}
	public int getQ_seq() {
		return q_seq;
	}
	public void setQ_seq(int q_seq) {
		this.q_seq = q_seq;
	}
	public String getQ_title() {
		return q_title;
	}
	public void setQ_title(String q_title) {
		this.q_title = q_title;
	}
	public String getQ_content() {
		return q_content;
	}
	public void setQ_content(String q_content) {
		this.q_content = q_content;
	}
	public String getQ_date() {
		return q_date;
	}
	public void setQ_date(String q_date) {
		this.q_date = q_date;
	}
	public String getQ_updatedate() {
		return q_updatedate;
	}
	public void setQ_updatedate(String q_updatedate) {
		this.q_updatedate = q_updatedate;
	}
	public String getQ_file() {
		return q_file;
	}
	public void setQ_file(String q_file) {
		this.q_file = q_file;
	}
	public String getQ_cnt() {
		return q_cnt;
	}
	public void setQ_cnt(String q_cnt) {
		this.q_cnt = q_cnt;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	@Override
	public String toString() {
		return "QuestionVO [q_seq=" + q_seq + ", q_title=" + q_title + ", q_content=" + q_content + ", q_date=" + q_date
				+ ", q_updatedate=" + q_updatedate + ", q_file=" + q_file + ", q_cnt=" + q_cnt + ", mem_id=" + mem_id
				+ "]";
	}
	
	
	
}
