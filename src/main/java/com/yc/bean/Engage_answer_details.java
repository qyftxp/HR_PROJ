package com.yc.bean;

import java.io.Serializable;

public class Engage_answer_details implements Serializable {
	private static final long serialVersionUID = 8868524040946664541L;
	private Integer and_id;
	private String answer_number;
	private Integer subject_id;
	private String answer;

	public Integer getAnd_id() {
		return and_id;
	}

	public void setAnd_id(Integer and_id) {
		this.and_id = and_id;
	}

	public String getAnswer_number() {
		return answer_number;
	}

	public void setAnswer_number(String answer_number) {
		this.answer_number = answer_number;
	}

	public Integer getSubject_id() {
		return subject_id;
	}

	public void setSubject_id(Integer subject_id) {
		this.subject_id = subject_id;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	@Override
	public String toString() {
		return "Engage_answer_details [and_id=" + and_id + ", answer_number="
				+ answer_number + ", subject_id=" + subject_id + ", answer="
				+ answer + "]";
	}
}
