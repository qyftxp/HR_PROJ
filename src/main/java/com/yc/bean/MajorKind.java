package com.yc.bean;

import java.io.Serializable;

public class MajorKind implements Serializable {
	private Integer auto_increment;
	
	private String major_kind_id;
	
	private String major_kind_name;

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

	@Override
	public String toString() {
		return "MajorKind [auto_increment=" + auto_increment + ", major_kind_id=" + major_kind_id + ", major_kind_name="
				+ major_kind_name + "]";
	}
	
	
}
