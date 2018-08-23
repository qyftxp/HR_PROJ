package com.yc.bean;

import java.io.Serializable;
import java.util.Date;

public class ModifyEmployee implements Serializable{
	
	private static final long serialVersionUID = 3458334059451743167L;

	private Integer hfd_id;
	
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
	
	private String human_age;//年龄
	
	private String human_educated_degree;//学历
	
	private String human_educated_years;//教育年限
	
	private String human_educated_major;//学历专业
	
	private String human_id_card;//身份证号
	
	private String remark;//备注
	
	private String salary_standard_name;//薪酬标准名称
	
	private String salary_sum;//基本薪酬总额
	
	private String demand_salaray_sum;//应发薪酬总额
	
	private String paid_salary_sum;//实发薪酬总额

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

	public Integer getHfd_id() {
		return hfd_id;
	}

	public void setHfd_id(Integer hfd_id) {
		this.hfd_id = hfd_id;
	}

	public String getHuman_id() {
		return human_id;
	}

	public void setHuman_id(String human_id) {
		this.human_id = human_id;
	}

	public String getDepartment_name() {
		return department_name;
	}

	public void setDepartment_name(String department_name) {
		this.department_name = department_name;
	}

	public String getHuman_name() {
		return human_name;
	}

	public void setHuman_name(String human_name) {
		this.human_name = human_name;
	}

	public String getHuman_address() {
		return human_address;
	}

	public void setHuman_address(String human_address) {
		this.human_address = human_address;
	}

	public String getHuman_postcode() {
		return human_postcode;
	}

	public void setHuman_postcode(String human_postcode) {
		this.human_postcode = human_postcode;
	}

	public String getHuman_major_kind_name() {
		return human_major_kind_name;
	}

	public void setHuman_major_kind_name(String human_major_kind_name) {
		this.human_major_kind_name = human_major_kind_name;
	}

	public String getHunma_major_name() {
		return hunma_major_name;
	}

	public void setHunma_major_name(String hunma_major_name) {
		this.hunma_major_name = hunma_major_name;
	}

	public String getHuman_mobilephone() {
		return human_mobilephone;
	}

	public void setHuman_mobilephone(String human_mobilephone) {
		this.human_mobilephone = human_mobilephone;
	}

	public String getHuman_bank() {
		return human_bank;
	}

	public void setHuman_bank(String human_bank) {
		this.human_bank = human_bank;
	}

	public String getHuman_account() {
		return human_account;
	}

	public void setHuman_account(String human_account) {
		this.human_account = human_account;
	}

	public String getHuman_qq() {
		return human_qq;
	}

	public void setHuman_qq(String human_qq) {
		this.human_qq = human_qq;
	}

	public String getHuman_email() {
		return human_email;
	}

	public void setHuman_email(String human_email) {
		this.human_email = human_email;
	}

	public String getHuman_hobby() {
		return human_hobby;
	}

	public void setHuman_hobby(String human_hobby) {
		this.human_hobby = human_hobby;
	}

	public String getHuman_speciality() {
		return human_speciality;
	}

	public void setHuman_speciality(String human_speciality) {
		this.human_speciality = human_speciality;
	}

	public String getHuman_sex() {
		return human_sex;
	}

	public void setHuman_sex(String human_sex) {
		this.human_sex = human_sex;
	}

	public String getHuman_party() {
		return human_party;
	}

	public void setHuman_party(String human_party) {
		this.human_party = human_party;
	}

	public String getHuman_nationality() {
		return human_nationality;
	}

	public void setHuman_nationality(String human_nationality) {
		this.human_nationality = human_nationality;
	}

	public String getHuman_race() {
		return human_race;
	}

	public void setHuman_race(String human_race) {
		this.human_race = human_race;
	}

	

	public String getHuman_birthplace() {
		return human_birthplace;
	}

	public void setHuman_birthplace(String human_birthplace) {
		this.human_birthplace = human_birthplace;
	}

	public String getHuman_age() {
		return human_age;
	}

	public void setHuman_age(String human_age) {
		this.human_age = human_age;
	}

	public String getHuman_educated_degree() {
		return human_educated_degree;
	}

	public void setHuman_educated_degree(String human_educated_degree) {
		this.human_educated_degree = human_educated_degree;
	}

	public String getHuman_educated_years() {
		return human_educated_years;
	}

	public void setHuman_educated_years(String human_educated_years) {
		this.human_educated_years = human_educated_years;
	}

	public String getHuman_educated_major() {
		return human_educated_major;
	}

	public void setHuman_educated_major(String human_educated_major) {
		this.human_educated_major = human_educated_major;
	}

	public String getHuman_id_card() {
		return human_id_card;
	}

	public void setHuman_id_card(String human_id_card) {
		this.human_id_card = human_id_card;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getSalary_standard_name() {
		return salary_standard_name;
	}

	public void setSalary_standard_name(String salary_standard_name) {
		this.salary_standard_name = salary_standard_name;
	}

	public String getSalary_sum() {
		return salary_sum;
	}

	public void setSalary_sum(String salary_sum) {
		this.salary_sum = salary_sum;
	}

	public String getDemand_salaray_sum() {
		return demand_salaray_sum;
	}

	public void setDemand_salaray_sum(String demand_salaray_sum) {
		this.demand_salaray_sum = demand_salaray_sum;
	}

	public String getPaid_salary_sum() {
		return paid_salary_sum;
	}

	public void setPaid_salary_sum(String paid_salary_sum) {
		this.paid_salary_sum = paid_salary_sum;
	}

	

	public String getHuman_family_membership() {
		return human_family_membership;
	}

	public void setHuman_family_membership(String human_family_membership) {
		this.human_family_membership = human_family_membership;
	}

	public String getHuman_picture() {
		return human_picture;
	}

	public void setHuman_picture(String human_picture) {
		this.human_picture = human_picture;
	}

	public String getCheck_status() {
		return check_status;
	}

	public void setCheck_status(String check_status) {
		this.check_status = check_status;
	}

	public String getRegister() {
		return register;
	}

	public void setRegister(String register) {
		this.register = register;
	}

	public String getChecker() {
		return checker;
	}

	public void setChecker(String checker) {
		this.checker = checker;
	}

	public String getChanger() {
		return changer;
	}

	public void setChanger(String changer) {
		this.changer = changer;
	}

	public Date getHuman_birthday() {
		return human_birthday;
	}

	public void setHuman_birthday(Date human_birthday) {
		this.human_birthday = human_birthday;
	}

	public Integer getMajor_change_amount() {
		return major_change_amount;
	}

	public void setMajor_change_amount(Integer major_change_amount) {
		this.major_change_amount = major_change_amount;
	}

	public Integer getFile_chang_amount() {
		return file_chang_amount;
	}

	public void setFile_chang_amount(Integer file_chang_amount) {
		this.file_chang_amount = file_chang_amount;
	}

	public Integer getHuman_histroy_id() {
		return human_histroy_id;
	}

	public void setHuman_histroy_id(Integer human_histroy_id) {
		this.human_histroy_id = human_histroy_id;
	}

	public Date getRegist_time() {
		return regist_time;
	}

	public void setRegist_time(Date regist_time) {
		this.regist_time = regist_time;
	}

	public Date getCheck_time() {
		return check_time;
	}

	public void setCheck_time(Date check_time) {
		this.check_time = check_time;
	}

	public Date getChange_time() {
		return change_time;
	}

	public void setChange_time(Date change_time) {
		this.change_time = change_time;
	}

	public Date getLastly_change_time() {
		return lastly_change_time;
	}

	public void setLastly_change_time(Date lastly_change_time) {
		this.lastly_change_time = lastly_change_time;
	}

	public Date getDelete_time() {
		return delete_time;
	}

	public void setDelete_time(Date delete_time) {
		this.delete_time = delete_time;
	}

	public Date getRecovery_time() {
		return recovery_time;
	}

	public void setRecovery_time(Date recovery_time) {
		this.recovery_time = recovery_time;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getHuman_file_status() {
		return human_file_status;
	}

	public void setHuman_file_status(String human_file_status) {
		this.human_file_status = human_file_status;
	}

	@Override
	public String toString() {
		return "ModifyEmployee [hfd_id=" + hfd_id + ", human_id=" + human_id + ", department_name=" + department_name
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
