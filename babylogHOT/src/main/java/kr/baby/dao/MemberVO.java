package kr.baby.dao;

public class MemberVO {
	  private String mem_id;
	  private String mem_pw;
	  private String mem_name;
	  private String mem_nick;
	  private String mem_gender;
	  private String mem_birth;
	  private String mem_tel;
	  private String mem_joindate;
	  private String mem_type;
	  private String mem_prof;
	  
	public MemberVO(String mem_id, String mem_pw, String mem_name, String mem_nick, String mem_gender, String mem_birth,
			String mem_tel, String mem_joindate, String mem_type, String mem_prof) {
		super();
		this.mem_id = mem_id;
		this.mem_pw = mem_pw;
		this.mem_name = mem_name;
		this.mem_nick = mem_nick;
		this.mem_gender = mem_gender;
		this.mem_birth = mem_birth;
		this.mem_tel = mem_tel;
		this.mem_joindate = mem_joindate;
		this.mem_type = mem_type;
		this.mem_prof = mem_prof;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getMem_pw() {
		return mem_pw;
	}

	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}

	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public String getMem_nick() {
		return mem_nick;
	}

	public void setMem_nick(String mem_nick) {
		this.mem_nick = mem_nick;
	}

	public String getMem_gender() {
		return mem_gender;
	}

	public void setMem_gender(String mem_gender) {
		this.mem_gender = mem_gender;
	}

	public String getMem_birth() {
		return mem_birth;
	}

	public void setMem_birth(String mem_birth) {
		this.mem_birth = mem_birth;
	}

	public String getMem_tel() {
		return mem_tel;
	}

	public void setMem_tel(String mem_tel) {
		this.mem_tel = mem_tel;
	}

	public String getMem_joindate() {
		return mem_joindate;
	}

	public void setMem_joindate(String mem_joindate) {
		this.mem_joindate = mem_joindate;
	}

	public String getMem_type() {
		return mem_type;
	}

	public void setMem_type(String mem_type) {
		this.mem_type = mem_type;
	}

	public String getMem_prof() {
		return mem_prof;
	}

	public void setMem_prof(String mem_prof) {
		this.mem_prof = mem_prof;
	}

	@Override
	public String toString() {
		return "MemberVO [mem_id=" + mem_id + ", mem_pw=" + mem_pw + ", mem_name=" + mem_name + ", mem_nick=" + mem_nick
				+ ", mem_gender=" + mem_gender + ", mem_birth=" + mem_birth + ", mem_tel=" + mem_tel + ", mem_joindate="
				+ mem_joindate + ", mem_type=" + mem_type + ", mem_prof=" + mem_prof + "]";
	}
	  
	
}