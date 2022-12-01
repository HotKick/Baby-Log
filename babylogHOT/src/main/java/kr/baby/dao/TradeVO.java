package kr.baby.dao;

public class TradeVO {
	private int trade_seq;
	private String trade_title;
	private String trade_content;
	private String trade_date;
	private String trade_file;
	private String trade_cnt;
	private String trade_ing;
	private String mem_id;
	public TradeVO(int trade_seq, String trade_title, String trade_content, String trade_date, String trade_file,
			String trade_cnt, String trade_ing, String mem_id) {
		super();
		this.trade_seq = trade_seq;
		this.trade_title = trade_title;
		this.trade_content = trade_content;
		this.trade_date = trade_date;
		this.trade_file = trade_file;
		this.trade_cnt = trade_cnt;
		this.trade_ing = trade_ing;
		this.mem_id = mem_id;
	}
	public int getTrade_seq() {
		return trade_seq;
	}
	public void setTrade_seq(int trade_seq) {
		this.trade_seq = trade_seq;
	}
	public String getTrade_title() {
		return trade_title;
	}
	public void setTrade_title(String trade_title) {
		this.trade_title = trade_title;
	}
	public String getTrade_content() {
		return trade_content;
	}
	public void setTrade_content(String trade_content) {
		this.trade_content = trade_content;
	}
	public String getTrade_date() {
		return trade_date;
	}
	public void setTrade_date(String trade_date) {
		this.trade_date = trade_date;
	}
	public String getTrade_file() {
		return trade_file;
	}
	public void setTrade_file(String trade_file) {
		this.trade_file = trade_file;
	}
	public String getTrade_cnt() {
		return trade_cnt;
	}
	public void setTrade_cnt(String trade_cnt) {
		this.trade_cnt = trade_cnt;
	}
	public String getTrade_ing() {
		return trade_ing;
	}
	public void setTrade_ing(String trade_ing) {
		this.trade_ing = trade_ing;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	@Override
	public String toString() {
		return "TradeVO [trade_seq=" + trade_seq + ", trade_title=" + trade_title + ", trade_content=" + trade_content
				+ ", trade_date=" + trade_date + ", trade_file=" + trade_file + ", trade_cnt=" + trade_cnt
				+ ", trade_ing=" + trade_ing + ", mem_id=" + mem_id + "]";
	}
	
	
	
}
