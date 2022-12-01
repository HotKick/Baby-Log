package kr.baby.dao;

public class BabyVO {

	private int baby_seq;
	private String baby_name;
	private String baby_birth;
	private String baby_gender;
	private String mem_id;
	
	
	public BabyVO(int baby_seq, String baby_name, String baby_birth, String baby_gender, String mem_id) {
		super();
		this.baby_seq = baby_seq;
		this.baby_name = baby_name;
		this.baby_birth = baby_birth;
		this.baby_gender = baby_gender;
		this.mem_id = mem_id;
	}


	public int getBaby_seq() {
		return baby_seq;
	}


	public void setBaby_seq(int baby_seq) {
		this.baby_seq = baby_seq;
	}


	public String getBaby_name() {
		return baby_name;
	}


	public void setBaby_name(String baby_name) {
		this.baby_name = baby_name;
	}


	public String getBaby_birth() {
		return baby_birth;
	}


	public void setBaby_birth(String baby_birth) {
		this.baby_birth = baby_birth;
	}


	public String getBaby_gender() {
		return baby_gender;
	}


	public void setBaby_gender(String baby_gender) {
		this.baby_gender = baby_gender;
	}


	public String getMem_id() {
		return mem_id;
	}


	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}


	@Override
	public String toString() {
		return "BabyVO [baby_seq=" + baby_seq + ", baby_name=" + baby_name + ", baby_birth=" + baby_birth
				+ ", baby_gender=" + baby_gender + ", mem_id=" + mem_id + "]";
	}
	
	
	
	
}
