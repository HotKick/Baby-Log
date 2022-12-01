package kr.baby.dao;

//게시판 게시판
public class CommunityVO {

	private int community_seq;
	private String community_title;
	private String community_content;
	private String community_date;
	private String community_file;
	private String community_cnt;
	private String community_type;
	private String mem_id;
	
	
	public CommunityVO(int community_seq, String community_title, String community_content, String community_date,
			String community_file, String community_cnt, String community_type, String mem_id) {
		super();
		this.community_seq = community_seq;
		this.community_title = community_title;
		this.community_content = community_content;
		this.community_date = community_date;
		this.community_file = community_file;
		this.community_cnt = community_cnt;
		this.community_type = community_type;
		this.mem_id = mem_id;
	}


	public int getCommunity_seq() {
		return community_seq;
	}


	public void setCommunity_seq(int community_seq) {
		this.community_seq = community_seq;
	}


	public String getCommunity_title() {
		return community_title;
	}


	public void setCommunity_title(String community_title) {
		this.community_title = community_title;
	}


	public String getCommunity_content() {
		return community_content;
	}


	public void setCommunity_content(String community_content) {
		this.community_content = community_content;
	}


	public String getCommunity_date() {
		return community_date;
	}


	public void setCommunity_date(String community_date) {
		this.community_date = community_date;
	}


	public String getCommunity_file() {
		return community_file;
	}


	public void setCommunity_file(String community_file) {
		this.community_file = community_file;
	}


	public String getCommunity_cnt() {
		return community_cnt;
	}


	public void setCommunity_cnt(String community_cnt) {
		this.community_cnt = community_cnt;
	}


	public String getCommunity_type() {
		return community_type;
	}


	public void setCommunity_type(String community_type) {
		this.community_type = community_type;
	}


	public String getMem_id() {
		return mem_id;
	}


	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}


	@Override
	public String toString() {
		return "CommunityVO [community_seq=" + community_seq + ", community_title=" + community_title
				+ ", community_content=" + community_content + ", community_date=" + community_date
				+ ", community_file=" + community_file + ", community_cnt=" + community_cnt + ", community_type="
				+ community_type + ", mem_id=" + mem_id + "]";
	}
	
	



}