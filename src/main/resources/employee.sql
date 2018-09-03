/* 创建新表 "HumanFile_dig"。                                                                     */
/* "human_file_dig" : 记录人力资源档案所做的任何更改                                                         */
create table human_file_dig (
	hfd_id int primary key auto_increment,  -- hfd_id" :  主键，自动增长列   
	human_id varchar(30) not null,          -- human_id" : 档案编号  
	department_name varchar(60)  not null,	      -- department_name  部门名
	human_name varchar(60) not null,        -- human_name" : 姓名    
	human_address varchar(200) not null,    -- "human_address" : 地址
	human_postcode varchar(10) not null,     -- human_postcode" : 邮政编码
	human_major_kind_name varchar(60) not null, -- human_major_kind_name" : 职位分类名称 
	human_major_name varchar(60) not null,   -- hunma_major_name" : 职位名称
	human_mobilephone char(11) not null,      -- human_mobilephone" : 手机号码
	human_bank varchar(50) not null,       -- human_bank" : 开户银行 
	human_account varchar(30) not null,     -- human_account" : 银行帐号
	human_qq varchar(15) not null,       -- human_qq" : QQ号码 
	human_email varchar(50) not null,			-- human_email" : 电子邮件
	human_hobby varchar(60) not null,				-- human_hobby" : 爱好
	human_speciality varchar(60) not null,		-- human_speciality" : 特长
	human_sex char(2) not null,					-- human_sex" : 性别
	human_party varchar(50) not null,     		-- human_party" : 政治面貌 
	human_nationality varchar(50) not null, 		-- human_nationality" : 国籍
	human_race varchar(50) not null,			-- human_race" : 民族
	human_birthday varchar(20) not null,				-- human_birthday" : 出生日期
	human_birthplace varchar(50) not null,		-- human_birthplace" : 出生地 
	human_age int not null,					-- human_age" : 年龄  
	human_educated_degree varchar(60) not null,	-- human_educated_degree" : 学历 
	human_educated_years varchar(50) not null,		-- "human_educated_years" : 教育年限  
	human_educated_major varchar(60) not null,	-- "human_educated_major" : 学历专业
	human_id_card varchar(20) not null,		-- "human_id_card" : 身份证号 
	remark text not null,							-- "remark" : 备注  
	salary_standard_name varchar(60) not null,	-- "salary_standard_name" : 薪酬标准名称 
	salary_sum double(9,2) not null,					-- salary_sum" : 基本薪酬总额  
	demand_salaray_sum double(9,2) not null,			-- "demand_salaray_sum" : 应发薪酬总额 
	paid_salary_sum  double(9,2) not null,				-- paid_salary_sum" : 实发薪酬总额
	major_change_amount int default 0,		-- major_change_amount" : 调动次数 
	file_chang_amount int default 0,			-- file_chang_amount" : 档案变更累计次数
	human_histroy_id int not null,			-- "human_histroy_records" : 简历id
	human_family_membership text  not null,		-- "human_family_membership" : 家庭关系
	human_picture varchar(255) not null,			-- human_picture" : 相片
	check_status varchar(60) not null,				-- "check_status" : 复核状态
	register varchar(60) not null,				-- "register" : 档案登记人 
	checker varchar(60),					-- checker" : 档案复核人
	changer varchar(60),					-- changer" : 档案变更人
	regist_time date not null,				-- regist_time" : 档案登记时间 
	check_time date,					-- check_time" : 档案复核时间 
	change_time date,				-- change_time" : 档案变更时间 
	lastly_change_time date,			-- "lastly_change_time" : 档案最近更改时间 
	delete_time date,				-- "delete_time" : 档案删除时间
	recovery_time date,				-- "recovery_time" : 档案恢复时间 
	human_file_status varchar(60) default '正常'
	); 				-- "human_file_status" : 档案状态  
	

	
	drop table human_file_dig;
	
	
	
	
	
	drop table human_file;
	
	
	
	/* 创建新表 "human_file"。                                                                         */
/* "human_file" : 人力资源档案  */
	
	create table human_file ( 
	huf_id int  auto_increment primary key, -- 主键，自动增长列
	human_id varchar(30) not null,          -- human_id" : 档案编号  
	department_name varchar(60)  not null,	      -- department_name  部门名
	human_name varchar(60) not null,        -- human_name" : 姓名    
	human_address varchar(200) not null,    -- "human_address" : 地址
	human_postcode varchar(10) not null,     -- human_postcode" : 邮政编码
	human_major_kind_name varchar(60) not null, -- human_major_kind_name" : 职位分类名称 
	human_major_name varchar(60) not null,   -- hunma_major_name" : 职位名称
	human_mobilephone char(11) not null,      -- human_mobilephone" : 手机号码
	human_bank varchar(50) not null,       -- human_bank" : 开户银行 
	human_account varchar(30) not null,     -- human_account" : 银行帐号
	human_qq varchar(15) not null,       -- human_qq" : QQ号码 
	human_email varchar(50) not null,			-- human_email" : 电子邮件
	human_hobby varchar(60) not null,				-- human_hobby" : 爱好
	human_speciality varchar(60) not null,		-- human_speciality" : 特长
	human_sex char(2) not null,					-- human_sex" : 性别
	human_party varchar(50) not null,     		-- human_party" : 政治面貌 
	human_nationality varchar(50) not null, 		-- human_nationality" : 国籍
	human_race varchar(50) not null,			-- human_race" : 民族
	human_birthday date not null,				-- human_birthday" : 出生日期
	human_birthplace varchar(50) not null,		-- human_birthplace" : 出生地 
	human_age int not null,					-- human_age" : 年龄  
	human_educated_degree varchar(60) not null,	-- human_educated_degree" : 学历 
	human_educated_years varchar(50) not null,		-- "human_educated_years" : 教育年限  
	human_educated_major varchar(60) not null,	-- "human_educated_major" : 学历专业
	human_id_card varchar(20) not null,		-- "human_id_card" : 身份证号 
	remark text not null,							-- "remark" : 备注  
	salary_standard_name varchar(60) not null,	-- "salary_standard_name" : 薪酬标准名称 
	salary_sum double(9,2) not null,					-- salary_sum" : 基本薪酬总额  
	demand_salaray_sum double(9,2) not null,			-- "demand_salaray_sum" : 应发薪酬总额 
	paid_salary_sum  double(9,2) not null,				-- paid_salary_sum" : 实发薪酬总额
	major_change_amount int default 0,		-- major_change_amount" : 调动次数 
	file_chang_amount int default 0,			-- file_chang_amount" : 档案变更累计次数
	human_histroy_id int not null,			-- "human_histroy_records" : 简历id
	human_family_membership text  not null,		-- "human_family_membership" : 家庭关系
	human_picture varchar(255) not null,			-- human_picture" : 相片
	check_status varchar(60) not null,				-- "check_status" : 复核状态
	register varchar(60) not null,				-- "register" : 档案登记人 
	checker varchar(60),					-- checker" : 档案复核人
	changer varchar(60),					-- changer" : 档案变更人
	regist_time date not null,				-- regist_time" : 档案登记时间 
	check_time date,					-- check_time" : 档案复核时间 
	change_time date,				-- change_time" : 档案变更时间 
	lastly_change_time date,			-- "lastly_change_time" : 档案最近更改时间 
	delete_time date,				-- "delete_time" : 档案删除时间
	recovery_time date,				-- "recovery_time" : 档案恢复时间 
	human_file_status varchar(60) default '正常'); 				-- "human_file_status" : 档案状态  
	
	drop table human_file;
	drop table human_file_dig;
	
	select * from human_file;
	select * from human_file_dig
	
select human_id,department_name,human_name,human_major_kind_name,human_major_name from human_file where human_file_status='正常' ;	
	
	
delete from human_file;	
	
	
	insert into human_file(human_id,department_name,human_name,human_address,human_postcode,human_major_kind_name,human_major_name,human_mobilephone,human_bank,human_account,
		human_qq,human_email,human_hobby,human_speciality,human_sex,human_party,human_nationality,human_race,human_birthday,human_birthplace,
		human_age,human_educated_degree,human_educated_years,human_educated_major,human_id_card,remark,salary_standard_name,salary_sum,demand_salaray_sum,paid_salary_sum,
		major_change_amount,file_chang_amount,human_histroy_id,human_family_membership,human_picture,check_status,register,checker,changer,regist_time,
		check_time,change_time,lastly_change_time,delete_time,recovery_time,human_file_status) values('118654321','人事部','张三','长沙市','425300','工程师','看看','131412',
		'建设银行','4332225668855','1278354705','1278354705@qq.com','篮球','编程','男','党员','中国','汉','1996-03-29','广东',
		22,'本科','18','网络工程','431124199603291666','很有实力，录用','8000.0','6000.0','8000.0','8888.0',
		0,1,1,'成员之间和睦，相亲相爱','jlkkjjj','待复核','张三','李四','',now(),now(),now(),now(),now(),now(),'正常');
		
		
		select * from human_file limit 0,5
