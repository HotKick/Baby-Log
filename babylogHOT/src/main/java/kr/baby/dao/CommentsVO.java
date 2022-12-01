package kr.baby.dao;

public class CommentsVO {

	private int cmt_seq;
	private String cmt_content;
	private String cmt_date;
	private int community_seq;
	private String mem_id;
	
	
	
	public CommentsVO(int cmt_seq, String cmt_content, String cmt_date, int community_seq, String mem_id) {
		super();
		this.cmt_seq = cmt_seq;
		this.cmt_content = cmt_content;
		this.cmt_date = cmt_date;
		this.community_seq = community_seq;
		this.mem_id = mem_id;
	}
	
	public int getCmt_seq() {
		return cmt_seq;
	}
	public void setCmt_seq(int cmt_seq) {
		this.cmt_seq = cmt_seq;
	}
	public String getCmt_content() {
		return cmt_content;
	}
	public void setCmt_content(String cmt_content) {
		this.cmt_content = cmt_content;
	}
	public String getCmt_date() {
		return cmt_date;
	}
	public void setCmt_date(String cmt_date) {
		this.cmt_date = cmt_date;
	}
	public int getCommunity_seq() {
		return community_seq;
	}
	public void setCommunity_seq(int community_seq) {
		this.community_seq = community_seq;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	
	
	@Override
	public String toString() {
		return "CommentsVO [cmt_seq=" + cmt_seq + ", cmt_content=" + cmt_content + ", cmt_date=" + cmt_date
				+ ", community_seq=" + community_seq + ", mem_id=" + mem_id + "]";
	}
	
	
	
	
}
