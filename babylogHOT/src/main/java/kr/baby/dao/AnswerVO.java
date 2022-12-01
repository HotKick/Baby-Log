package kr.baby.dao;

public class AnswerVO {

	private int a_seq;
	private String a_title;
	private String a_content;
	private String a_date;
	private String a_file;
	private String a_cnt;
	private int q_seq;
	private String mem_id;
	
	public AnswerVO(int a_seq, String a_title, String a_content, String a_date, String a_file, String a_cnt,
			int q_seq, String mem_id) {
		super();
		this.a_seq = a_seq;
		this.a_title = a_title;
		this.a_content = a_content;
		this.a_date = a_date;
		this.a_file = a_file;
		this.a_cnt = a_cnt;
		this.q_seq = q_seq;
		this.mem_id = mem_id;
	}

	public int getA_seq() {
		return a_seq;
	}

	public void setA_seq(int a_seq) {
		this.a_seq = a_seq;
	}

	public String getA_title() {
		return a_title;
	}

	public void setA_title(String a_title) {
		this.a_title = a_title;
	}

	public String getA_content() {
		return a_content;
	}

	public void setA_content(String a_content) {
		this.a_content = a_content;
	}

	public String getA_date() {
		return a_date;
	}

	public void setA_date(String a_date) {
		this.a_date = a_date;
	}

	public String getA_file() {
		return a_file;
	}

	public void setA_file(String a_file) {
		this.a_file = a_file;
	}

	public String getA_cnt() {
		return a_cnt;
	}

	public void setA_cnt(String a_cnt) {
		this.a_cnt = a_cnt;
	}

	public int getQ_seq() {
		return q_seq;
	}

	public void setQ_seq(int q_seq) {
		this.q_seq = q_seq;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	@Override
	public String toString() {
		return "AnswerVO [a_seq=" + a_seq + ", a_title=" + a_title + ", a_content=" + a_content + ", a_date=" + a_date
				+ ", a_file=" + a_file + ", a_cnt=" + a_cnt + ", q_seq=" + q_seq + ", mem_id=" + mem_id + "]";
	}
	
	
	
}
