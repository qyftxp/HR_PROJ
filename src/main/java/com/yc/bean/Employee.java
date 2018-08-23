package com.yc.bean;

import java.io.Serializable;
import java.util.Date;

public class Employee implements Serializable{

	private static final long serialVersionUID = 4761843136545483131L;

	private Integer huf_id;
	
	private String human_id;//档案编号
	
	private String department_name;//部门名
	
	private String human_name;//姓名
	
	private String human_address;//地址
	
	private String human_postcode;//邮政编码
	
	private String human_major_kind_name;//职位分类
	
	
	
	private String hunma_major_name;//职位名称
	
	private String human_mobilephone;//手机号码
	
	private String human_bank;//开户银行
	
	private String human_account;//银行帐号
	
	private String human_qq;//qq
	
	private String human_email;
	
	private String human_hobby;//爱好
	
	private String human_speciality;//特长
	
	private String human_sex;//性别
	
	private String human_party;//政治面貌
	
	
	private String human_nationality;//国籍

	private String human_race;//民族
	
	private Date human_birthday;//出生日期
	
	private String human_birthplace;//出生地
	
	private Integer human_age;//年龄
	
	private String human_educated_degree;//学历
	
	private String human_educated_years;//教育年限
	
	private String human_educated_major;//学历专业
	
	private String human_id_card;//身份证号
	
	private String remark;//备注
	
	
	private String salary_standard_name;//薪酬标准名称
	
	private Double salary_sum;//基本薪酬总额
	
	private Double demand_salaray_sum;//应发薪酬总额
	
	private Double paid_salary_sum;//实发薪酬总额

	private Integer major_change_amount;//调动次数
	
	private Integer file_chang_amount;//档案变更累计次数
	
	private Integer human_histroy_id;//简历id
	
	private String human_family_membership;//家庭关系
	
	private String human_picture;//相片
	
	private String check_status;//复核状态
	
	
	
	private String register;//档案登记人
	
	private String checker;//档案复核人
	
	private String changer;//档案变更人
	
	private Date regist_time;//档案登记时间
	
	private Date check_time;//档案复核时间

	private Date change_time;//档案变更时间
	
	private Date lastly_change_time;//档案最近更改时间
	
	private Date delete_time;//档案删除时间
	
	private Date recovery_time;//档案恢复时间
	
	private String human_file_status;//档案状态



	public void setHuf_id(Integer huf_id) {
		this.huf_id = huf_id;
	}



	public void setHuman_id(String human_id) {
		this.human_id = human_id;
	}



	public void setDepartment_name(String department_name) {
		this.department_name = department_name;
	}



	public void setHuman_name(String human_name) {
		this.human_name = human_name;
	}



	public void setHuman_address(String human_address) {
		this.human_address = human_address;
	}



	public void setHuman_postcode(String human_postcode) {
		this.human_postcode = human_postcode;
	}



	public void setHuman_major_kind_name(String human_major_kind_name) {
		this.human_major_kind_name = human_major_kind_name;
	}



	public void setHunma_major_name(String hunma_major_name) {
		this.hunma_major_name = hunma_major_name;
	}



	public void setHuman_mobilephone(String human_mobilephone) {
		this.human_mobilephone = human_mobilephone;
	}



	public void setHuman_bank(String human_bank) {
		this.human_bank = human_bank;
	}



	public void setHuman_account(String human_account) {
		this.human_account = human_account;
	}



	public void setHuman_qq(String human_qq) {
		this.human_qq = human_qq;
	}



	public void setHuman_email(String human_email) {
		this.human_email = human_email;
	}



	public void setHuman_hobby(String human_hobby) {
		this.human_hobby = human_hobby;
	}



	public void setHuman_speciality(String human_speciality) {
		this.human_speciality = human_speciality;
	}



	public void setHuman_sex(String human_sex) {
		this.human_sex = human_sex;
	}



	public void setHuman_party(String human_party) {
		this.human_party = human_party;
	}



	public void setHuman_nationality(String human_nationality) {
		this.human_nationality = human_nationality;
	}



	public void setHuman_race(String human_race) {
		this.human_race = human_race;
	}



	public void setHuman_birthday(Date human_birthday) {
		this.human_birthday = human_birthday;
	}



	public void setHuman_birthplace(String human_birthplace) {
		this.human_birthplace = human_birthplace;
	}



	public void setHuman_age(Integer human_age) {
		this.human_age = human_age;
	}



	public void setHuman_educated_degree(String human_educated_degree) {
		this.human_educated_degree = human_educated_degree;
	}



	public void setHuman_educated_years(String human_educated_years) {
		this.human_educated_years = human_educated_years;
	}



	public void setHuman_educated_major(String human_educated_major) {
		this.human_educated_major = human_educated_major;
	}



	public void setHuman_id_card(String human_id_card) {
		this.human_id_card = human_id_card;
	}



	public void setRemark(String remark) {
		this.remark = remark;
	}



	public void setSalary_standard_name(String salary_standard_name) {
		this.salary_standard_name = salary_standard_name;
	}



	public void setSalary_sum(Double salary_sum) {
		this.salary_sum = salary_sum;
	}



	public void setDemand_salaray_sum(Double demand_salaray_sum) {
		this.demand_salaray_sum = demand_salaray_sum;
	}



	public void setPaid_salary_sum(Double paid_salary_sum) {
		this.paid_salary_sum = paid_salary_sum;
	}



	public void setMajor_change_amount(Integer major_change_amount) {
		this.major_change_amount = major_change_amount;
	}



	public void setFile_chang_amount(Integer file_chang_amount) {
		this.file_chang_amount = file_chang_amount;
	}



	public void setHuman_histroy_id(Integer human_histroy_id) {
		this.human_histroy_id = human_histroy_id;
	}



	public void setHuman_family_membership(String human_family_membership) {
		this.human_family_membership = human_family_membership;
	}



	public void setHuman_picture(String human_picture) {
		this.human_picture = human_picture;
	}



	public void setCheck_status(String check_status) {
		this.check_status = check_status;
	}



	public void setRegister(String register) {
		this.register = register;
	}



	public void setChecker(String checker) {
		this.checker = checker;
	}



	public void setChanger(String changer) {
		this.changer = changer;
	}



	public void setRegist_time(Date regist_time) {
		this.regist_time = regist_time;
	}



	public void setCheck_time(Date check_time) {
		this.check_time = check_time;
	}



	public void setChange_time(Date change_time) {
		this.change_time = change_time;
	}



	public void setLastly_change_time(Date lastly_change_time) {
		this.lastly_change_time = lastly_change_time;
	}



	public void setDelete_time(Date delete_time) {
		this.delete_time = delete_time;
	}



	public void setRecovery_time(Date recovery_time) {
		this.recovery_time = recovery_time;
	}



	public void setHuman_file_status(String human_file_status) {
		this.human_file_status = human_file_status;
	}



	@Override
	public String toString() {
		return "Employee [huf_id=" + huf_id + ", human_id=" + human_id + ", department_name=" + department_name
				+ ", human_name=" + human_name + ", human_address=" + human_address + ", human_postcode="
				+ human_postcode + ", human_major_kind_name=" + human_major_kind_name + ", hunma_major_name="
				+ hunma_major_name + ", human_mobilephone=" + human_mobilephone + ", human_bank=" + human_bank
				+ ", human_account=" + human_account + ", human_qq=" + human_qq + ", human_email=" + human_email
				+ ", human_hobby=" + human_hobby + ", human_speciality=" + human_speciality + ", human_sex=" + human_sex
				+ ", human_party=" + human_party + ", human_nationality=" + human_nationality + ", human_race="
				+ human_race + ", human_birthday=" + human_birthday + ", human_birthplace=" + human_birthplace
				+ ", human_age=" + human_age + ", human_educated_degree=" + human_educated_degree
				+ ", human_educated_years=" + human_educated_years + ", human_educated_major=" + human_educated_major
				+ ", human_id_card=" + human_id_card + ", remark=" + remark + ", salary_standard_name="
				+ salary_standard_name + ", salary_sum=" + salary_sum + ", demand_salaray_sum=" + demand_salaray_sum
				+ ", paid_salary_sum=" + paid_salary_sum + ", major_change_amount=" + major_change_amount
				+ ", file_chang_amount=" + file_chang_amount + ", human_histroy_id=" + human_histroy_id
				+ ", human_family_membership=" + human_family_membership + ", human_picture=" + human_picture
				+ ", check_status=" + check_status + ", register=" + register + ", checker=" + checker + ", changer="
				+ changer + ", regist_time=" + regist_time + ", check_time=" + check_time + ", change_time="
				+ change_time + ", lastly_change_time=" + lastly_change_time + ", delete_time=" + delete_time
				+ ", recovery_time=" + recovery_time + ", human_file_status=" + human_file_status + "]";
	}

	
	
	
}
