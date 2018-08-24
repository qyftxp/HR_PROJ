package com.yc.bean;

import java.io.Serializable;

public class Major implements Serializable {

	private static final long serialVersionUID = 983093507886292600L;
	
	private Integer auto_increment;
	
	private String major_kind_id;
	
	private String major_kind_name;
	
	private String major_id;
	
	private String major_name;
	
	private Integer test_amount;

	public Integer getAuto_increment() {
		return auto_increment;
	}

	public void setAuto_increment(Integer auto_increment) {
		this.auto_increment = auto_increment;
	}

	public String getMajor_kind_id() {
		return major_kind_id;
	}

	public void setMajor_kind_id(String major_kind_id) {
		this.major_kind_id = major_kind_id;
	}

	public String getMajor_kind_name() {
		return major_kind_name;
	}

	public void setMajor_kind_name(String major_kind_name) {
		this.major_kind_name = major_kind_name;
	}

	public String getMajor_id() {
		return major_id;
	}

	public void setMajor_id(String major_id) {
		this.major_id = major_id;
	}

	public String getMajor_name() {
		return major_name;
	}

	public void setMajor_name(String major_name) {
		this.major_name = major_name;
	}

	public Integer getTest_amount() {
		return test_amount;
	}

	public void setTest_amount(Integer test_amount) {
		this.test_amount = test_amount;
	}

	@Override
	public String toString() {
		return "Major [auto_increment=" + auto_increment + ", major_kind_id=" + major_kind_id + ", major_kind_name="
				+ major_kind_name + ", major_id=" + major_id + ", major_name=" + major_name + ", test_amount="
				+ test_amount + "]";
	}
	
	
}
