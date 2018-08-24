package com.yc.bean;

import java.io.Serializable;

public class PublicChar implements Serializable{
	
	private static final long serialVersionUID = -4033576806211675108L;

	private Integer pbc_id;
	
	private String attribute_kind;
	
	private String attribute_name;

	public Integer getPbc_id() {
		return pbc_id;
	}

	public void setPbc_id(Integer pbc_id) {
		this.pbc_id = pbc_id;
	}

	public String getAttribute_kind() {
		return attribute_kind;
	}

	public void setAttribute_kind(String attribute_kind) {
		this.attribute_kind = attribute_kind;
	}

	public String getAttribute_name() {
		return attribute_name;
	}

	public void setAttribute_name(String attribute_name) {
		this.attribute_name = attribute_name;
	}

	@Override
	public String toString() {
		return "PublicChar [pbc_id=" + pbc_id + ", attribute_kind=" + attribute_kind + ", attribute_name="
				+ attribute_name + "]";
	}
	
	
}
