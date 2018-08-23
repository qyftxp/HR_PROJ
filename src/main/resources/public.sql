
/* 创建 HR_DB 数据库。                                                                              */ 


create database HR_DB; 


use HR_DB; 
                                                      
create table users (            -- 登录用户表
	u_id 			int   auto_increment primary key,    -- user_id : 主键，自动增长列        
	u_name 			varchar(60) not null,			-- user_name" : 用户名 
	u_true_name 	varchar(60) not null		-- user_true_name" : 真实姓名 
	user_position 	varchar(20)  not null,		-- user_position   职位   根据职位名称有不同的权限
	u_password 		varchar(60) not null)        -- user_password" : 密码    

select * from users;

insert into users(u_name,u_true_name,user_position,u_password) values('better_admin','zhangsan','总管理员','123456')





--public_char" : 公共字段设置，包括薪酬设置，职称设置，国籍，民族，宗教信仰，政治面貌，教育年限，学历,专业，特长，爱好，培训项目，培训成绩，奖励项目，奖励等级 */                                                             */  
create table public_char ( 
	pbc_id int   auto_increment primary key,   -- pbc_id" : 主键，自动增长列 
	attribute_kind varchar(60) ,  -- attribute_kind" : 属性的种类
	attribute_name varchar(60) )  -- attribute_name" : 属性的名称  


insert into public_char(attribute_kind,attribute_name) values('国籍','中国');
insert into public_char(attribute_kind,attribute_name) values('国籍','美国');
insert into public_char(attribute_kind,attribute_name) values('民族','汉族');
insert into public_char(attribute_kind,attribute_name) values('民族','回族');
insert into public_char(attribute_kind,attribute_name) values('宗教信仰','无');
insert into public_char(attribute_kind,attribute_name) values('宗教信仰','佛教');
insert into public_char(attribute_kind,attribute_name) values('政治面貌','党员');
insert into public_char(attribute_kind,attribute_name) values('政治面貌','群众');
insert into public_char(attribute_kind,attribute_name) values('教育年限','12');
insert into public_char(attribute_kind,attribute_name) values('教育年限','16');
insert into public_char(attribute_kind,attribute_name) values('学历','本科');
insert into public_char(attribute_kind,attribute_name) values('学历','大专');
insert into public_char(attribute_kind,attribute_name) values('专业','生物工程');
insert into public_char(attribute_kind,attribute_name) values('专业','计算机');
insert into public_char(attribute_kind,attribute_name) values('特长','数据库');
insert into public_char(attribute_kind,attribute_name) values('特长','java');
insert into public_char(attribute_kind,attribute_name) values('爱好','篮球');
insert into public_char(attribute_kind,attribute_name) values('爱好','舞蹈');
insert into public_char(attribute_kind,attribute_name) values('培训项目','英语');
insert into public_char(attribute_kind,attribute_name) values('培训项目','管理');
insert into public_char(attribute_kind,attribute_name) values('培训成绩','A');
insert into public_char(attribute_kind,attribute_name) values('培训成绩','B');
insert into public_char(attribute_kind,attribute_name) values('奖励项目','技术攻关');
insert into public_char(attribute_kind,attribute_name) values('奖励项目','销售绩效');
insert into public_char(attribute_kind,attribute_name) values('奖励等级','A');
insert into public_char(attribute_kind,attribute_name) values('奖励等级','B');
insert into public_char(attribute_kind,attribute_name) values('职称','工程师');
insert into public_char(attribute_kind,attribute_name) values('职称','经理');
insert into public_char(attribute_kind,attribute_name) values('职称','助理');
insert into public_char(attribute_kind,attribute_name) values('职称','教授');
insert into public_char(attribute_kind,attribute_name) values('职称','讲师');
insert into public_char(attribute_kind,attribute_name) values('职称','技术支持');
insert into public_char(attribute_kind,attribute_name) values('薪酬设置','出差补助');
insert into public_char(attribute_kind,attribute_name) values('薪酬设置','交通补贴');
insert into public_char(attribute_kind,attribute_name) values('薪酬设置','住房补贴');
insert into public_char(attribute_kind,attribute_name) values('薪酬设置','基本工资');
insert into public_char(attribute_kind,attribute_name) values('薪酬设置','年终奖');
insert into public_char(attribute_kind,attribute_name) values('薪酬设置','误餐补助');

-- 部门表
create table department(
	dept_id int   auto_increment primary key,-- 主键
	department_id  int not null,   -- 部门编号
	department_name varchar(20) not null-- 部门名称
)

delete from department;

insert into department(department_id,department_name) values(1,'财务部');
insert into department(department_id,department_name) values(2,'行政后勤部');
insert into department(department_id,department_name) values(3,'人事部');
insert into department(department_id,department_name) values(4,'企划部');
insert into department(department_id,department_name) values(5,'技术部');
insert into department(department_id,department_name) values(6,'销售部');
insert into department(department_id,department_name) values(7,'项目工程部');
insert into department(department_id,department_name) values(8,'生产研发部');
insert into department(department_id,department_name) values(9,'采购部');
insert into department(department_id,department_name) values(10,'客户服务部');





-- config_major_kind" : 职位分类设置   
create table config_major_kind (    
	mfk_id int   auto_increment primary key,   -- mfk_id" : 主键，自动增长列 
	major_kind_id varchar(5) null,        -- major_kind_id" : 职位分类编号   
	major_kind_name varchar(60) null)  -- major_kind_name : 职分类位名称                //工程师           



insert into config_major_kind(major_kind_id,major_kind_name) values('01','销售');
insert into config_major_kind(major_kind_id,major_kind_name) values('02','软件开发');
insert into config_major_kind(major_kind_id,major_kind_name) values('03','人力资源');
insert into config_major_kind(major_kind_id,major_kind_name) values('04','生产部');



/* 创建新表 "config_major"。                                                                       */
/* "config_major" : 职位设置                                                                      */
create table config_major ( 
	mak_id int auto_increment primary key,  -- config_major" : 职位设置
	major_kind_id varchar(5) not null,        -- major_kind_id" : 职位分类编号
	major_kind_name varchar(60) not null,  -- major_kind_name" : 职位分类名称 
	major_id varchar(5) not null,          -- major_id" : 职位编号
	major_name varchar(60) not null,   --  major_name" : 职位名称
	test_amount int not null)    -- test_amount" : 题套数量  


select * from config_major;
insert into config_major(major_kind_id,major_kind_name,major_id,major_name,test_amount) values('01','销售','01','区域经理',0);
insert into config_major(major_kind_id,major_kind_name,major_id,major_name,test_amount) values('01','销售','02','总经理',0);
insert into config_major(major_kind_id,major_kind_name,major_id,major_name,test_amount) values('02','软件开发','01','项目经理',0);
insert into config_major(major_kind_id,major_kind_name,major_id,major_name,test_amount) values('02','软件开发','02','程序员',0);
insert into config_major(major_kind_id,major_kind_name,major_id,major_name,test_amount) values('03','人力资源','01','人事经理',0);
insert into config_major(major_kind_id,major_kind_name,major_id,major_name,test_amount) values('03','人力资源','02','专员',0);
insert into config_major(major_kind_id,major_kind_name,major_id,major_name,test_amount) values('04','生产部','01','主任',0);
insert into config_major(major_kind_id,major_kind_name,major_id,major_name,test_amount) values('04','生产部','02','技术工人',0);




/* 创建新表 "HumanFile_dig"。                                                                     */
/* "human_file_dig" : 记录人力资源档案所做的任何更改                                                         */
create table human_file_dig ( 
	hfd_id int auto_increment primary key,  -- hfd_id" : 主键，自动增长列   
	human_id varchar(30) not null,          -- human_id" : 档案编号  
	department_name int  not null,	      -- department_name  部门名
	human_name varchar(60) not null,        -- human_name" : 姓名    
	human_address varchar(200) not null,    -- "human_address" : 地址
	human_postcode varchar(10) not null,     -- human_postcode" : 邮政编码
       
	human_major_kind_name varchar(60) not null, -- human_major_kind_name" : 职位分类名称 

	hunma_major_name varchar(60) not null,   -- hunma_major_name" : 职位名称
	human_mobilephone char(11) not null,      -- human_mobilephone" : 手机号码
	human_bank varchar(50) not null,       -- human_bank" : 开户银行 
	human_account varchar(30) not null,     -- human_account" : 银行帐号
	human_qq varchar(15) not null,       -- human_qq" : QQ号码 
	human_email varchar(50) not null,			-- human_email" : 电子邮件
	human_hobby varchar(60) not null,				-- human_hobby" : 爱好
	human_speciality varchar(60) not null,		-- human_speciality" : 特长
	human_sex char(2) not null,					-- human_sex" : 性别
	human_religion varchar(50) not null,			-- human_religion" : 宗教信仰 
	human_party varchar(50) not null,     		-- human_party" : 政治面貌 
	human_nationality varchar(50) not null, 		-- human_nationality" : 国籍
	human_race varchar(50) not null,			-- human_race" : 民族
	human_birthday varchar(20) not null,				-- human_birthday" : 出生日期
	human_birthplace varchar(50) not null,		-- human_birthplace" : 出生地 
	human_age varchar(50) not null,					-- human_age" : 年龄  
	human_educated_degree varchar(60) not null,	-- human_educated_degree" : 学历 
	human_educated_years varchar(50) not null,		-- "human_educated_years" : 教育年限  
	human_educated_major varchar(60) not null,	-- "human_educated_major" : 学历专业
	
	human_id_card varchar(20) not null,		-- "human_id_card" : 身份证号 
	remark text not null,							-- "remark" : 备注  
	
	salary_standard_name varchar(60) not null,	-- "salary_standard_name" : 薪酬标准名称 
	salary_sum money varchar(50) not null,					-- salary_sum" : 基本薪酬总额  
	demand_salaray_sum money varchar(50) not null,			-- "demand_salaray_sum" : 应发薪酬总额 
	paid_salary_sum money varchar(50) not null,				-- paid_salary_sum" : 实发薪酬总额
	major_change_amount varchar(50) not null,		-- major_change_amount" : 调动次数 
	
	
	file_chang_amount varchar(255) not null,			-- file_chang_amount" : 档案变更累计次数
	human_histroy_records text  not null,			-- "human_histroy_records" : 简历id
	human_family_membership text  not null,		-- "human_family_membership" : 家庭关系
	human_picture varchar(255) not null,			-- human_picture" : 相片
	
	check_status varchar(60) not null,				-- "check_status" : 复核状态
	register varchar(60) not null,				-- "register" : 档案登记人 
	checker varchar(60) not null,					-- checker" : 档案复核人
	changer varchar(60) not null,					-- changer" : 档案变更人
	regist_time varchar(60) not null,				-- regist_time" : 档案登记时间 
	check_time varchar(60) not null,					-- check_time" : 档案复核时间 
	change_time varchar(60) not null,				-- change_time" : 档案变更时间 
	lastly_change_time varchar(60) not null,			-- "lastly_change_time" : 档案最近更改时间 
	delete_time varchar(60),				-- "delete_time" : 档案删除时间
	recovery_time varchar(60),				-- "recovery_time" : 档案恢复时间 
	human_file_status varchar(60)) 				-- "human_file_status" : 档案状态  




/* 创建新表 "human_file"。                                                                         */
/* "human_file" : 人力资源档案                                                                      */
                                                              */  
create table human_file ( 
	huf_id int  auto_increment primary key, -- 主键，自动增长列
	human_id varchar(30) not null,          -- human_id" : 档案编号  
	department_name int  not null,	      -- department_name  部门名
	human_name varchar(60) not null,        -- human_name" : 姓名    
	human_address varchar(200) not null,    -- "human_address" : 地址
	human_postcode varchar(10) not null,     -- human_postcode" : 邮政编码
	human_major_kind_name varchar(60) not null, -- human_major_kind_name" : 职位分类名称 
	hunma_major_name varchar(60) not null,   -- hunma_major_name" : 职位名称
	human_mobilephone char(11) not null,      -- human_mobilephone" : 手机号码
	human_bank varchar(50) not null,       -- human_bank" : 开户银行 
	human_account varchar(30) not null,     -- human_account" : 银行帐号
	human_qq varchar(15) not null,       -- human_qq" : QQ号码 
	human_email varchar(50) not null,			-- human_email" : 电子邮件
	human_hobby varchar(60) not null,				-- human_hobby" : 爱好
	human_speciality varchar(60) not null,		-- human_speciality" : 特长
	human_sex char(2) not null,					-- human_sex" : 性别
	human_religion varchar(50) not null,			-- human_religion" : 宗教信仰 
	human_party varchar(50) not null,     		-- human_party" : 政治面貌 
	human_nationality varchar(50) not null, 		-- human_nationality" : 国籍
	human_race varchar(50) not null,			-- human_race" : 民族
	human_birthday datetime not null,				-- human_birthday" : 出生日期
	human_birthplace varchar(50) not null,		-- human_birthplace" : 出生地 
	human_age varchar(50) not null,					-- human_age" : 年龄  
	human_educated_degree varchar(60) not null,	-- human_educated_degree" : 学历 
	human_educated_years varchar(50) not null,		-- "human_educated_years" : 教育年限  
	human_educated_major varchar(60) not null,	-- "human_educated_major" : 学历专业
	human_id_card varchar(20) not null,		-- "human_id_card" : 身份证号 
	remark text varchar(50) not null,							-- "remark" : 备注  
	salary_standard_name varchar(60) not null,	-- "salary_standard_name" : 薪酬标准名称 
	salary_sum money varchar(50) not null,					-- salary_sum" : 基本薪酬总额  
	demand_salaray_sum money varchar(50) not null,			-- "demand_salaray_sum" : 应发薪酬总额 
	paid_salary_sum money varchar(50) not null,				-- paid_salary_sum" : 实发薪酬总额
	major_change_amount varchar(50) not null,		-- major_change_amount" : 调动次数 
	file_chang_amount varchar(255) not null,			-- file_chang_amount" : 档案变更累计次数
	human_histroy_records text varchar(255) not null,			-- "human_histroy_records" : 简历id
	human_family_membership text varchar(255) not null,		-- "human_family_membership" : 家庭关系
	human_picture varchar(255) not null,			-- human_picture" : 相片
	human_file_status varchar(60)); 				-- "human_file_status" : 档案状态  



/* 创建新表 "salary_standard_details"。                                                            */
/* "salary_standard_details" : 薪酬标准单详细信息                                                      */ 
create table salary_standard_details ( 
	sdt_id int auto_increment primary key,    --sdt_id" : 主键，自动增长列 
	standard_id varchar(30) not null,         --standard_id" : 薪酬标准单编号  
	standard_name varchar(60) not null,       --standard_name" : 薪酬标准单名称 
	item_id smallint not null,				  --item_id" : 薪酬项目序号
	item_name varchar(60) not null,			--item_name" : 薪酬项目名称  
	salary money not null)                    --salary" : 薪酬金额
	
	



/* 创建新表 "salary_standard"。                                                                    */
/* "salary_standard" : 薪酬标准基本信息表                                                              */
create table salary_standard ( 
	ssd_id int auto_increment primary key,      -- ssd_id" : 主键，自动增长列
	standard_id varchar(30) not null,			-- standard_id" : 薪酬标准单编号    
	standard_name varchar(60) not null,			-- standard_name" : 薪酬标准单名称
	designer varchar(60) not null,				-- designer" : 制定者名字
	register varchar(60) not null,				-- register" : 登记人 
	checker varchar(60) not null,				-- checker" : 复核人
	changer varchar(60) not null,				-- changer" : 变更人
	regist_time varchar(20) not null,			-- regist_time" : 登记时间
	check_time varchar(20) not null,			-- check_time" : 复核时间 
	change_time varchar(20) not null,			-- check_time" : 复核时间 
	salary_sum double(10,2) not null,			 -- salary_sum" : 薪酬总额 
	check_status varchar(9) not null,			-- check_status" : 是否经过复核 
	change_status varchar(9) not null,			-- change_status" : 更改状态 
	check_comment text not null,				-- check_comment" : 复核意见
	remark text not null)  						-- remark" : 备注 

	/* 创建新表 "salary_grant"。                                                                       */
/* "salary_grant" : 薪酬发放登记表                                                                   */
create table salary_grant( 
	sgr_id int auto_increment primary key,   -- sgr_id  : 主键，自动增长列  
	salary_grant_id varchar(30) not null,    -- alary_grant_id" : 薪酬发放编号 
	department_name varchar(20) not null, -- 部门名称
	human_amount int not null,          -- human_amount" : 总人数 
	salary_sum double(10,2) not null,		-- salary_sum" : 薪酬总额 
	salary_paid_sum double(10,2) not null,         -- salary_paid_sum" : 实发总金额
	register varchar(60) not null,		 -- register" : 登记人 
	regist_time varchar(20) not null,		-- regist_time" : 登记时间
	checker varchar(60) not null,			-- checker" : 复核人 
	check_time varchar(20) not null,			-- check_time" : 复核时间 
	check_status varchar(20) not null)  		-- check_status" : 复核状态
	
	
/* 创建新表 "salary_grant_details"。                                                               */
/* "salary_grant_details" : 薪酬发放详细信息                                                          */
create table salary_grant_details ( 
	grd_id int auto_increment primary key,    -- grd_id" : 主键，自动增长列    
	salary_standard_id varchar(30) not null,  -- salary_standard_id" : 薪酬标准单编号    
	salary_grant_id varchar(30) not null,		-- salary_grant_id" : 薪酬发放编号
	human_id varchar(30) not null,				-- human_id" : 档案编号  
	human_name varchar(60) not null,			-- human_name" : 姓名 
	bouns_sum double(10,2) not null,		 -- bouns_sum" : 奖励金额
	sale_sum double(10,2) not null,					-- sale_sum" : 销售绩效金额 
	deduct_sum double(10,2) not null,					-- deduct_sum" : 应扣金额
	salary_standard_sum double(10,2) not null,			-- salary_standard_sum" : 标准薪酬总额
	salary_paid_sum double(10,2) not null)  			-- salary_paid_sum" : 实发薪酬总额
	


/* 创建新表 "major_change"。                                                                       */
/* "major_change" : 职位调动表                                                                     */
create table major_change ( 
	mch_id int auto_increment primary key,  -- mch_id" : 主键，自动增长列  
	department_name varchar(20) not null  , -- 部门名称
	major_kind_id varchar(5) not null,  -- major_kind_id" : 职位分类编号
	major_kind_name varchar(60) not null,-- major_kind_name" : 职位分类名称
	major_id varchar(5) not null,-- major_id" : 职位编号
	major_name varchar(60) not null,-- major_name" : 职位名称 
	new_department_name varchar(20) not null  , -- 新部门名称
	new_major_kind_id varchar(5) not null,  -- new_major_kind_id" : 新职位分类编号
	new_major_kind_name varchar(60) not null,-- new_major_kind_name" : 新职位分类名称
	new_major_id varchar(5) not null,  -- new_major_id" : 新职位编号
	new_major_name varchar(60) not null,-- new_major_name" : 新职位名称
	human_id varchar(30) not null,  -- human_id" : 人力资源档案编号
	human_name varchar(60) not null,-- human_name" : 姓名 
	salary_standard_id varchar(30) not null,-- salary_standard_id" : 薪酬标准编号
	salary_standard_name varchar(60) not null,-- salary_standard_name" : 薪酬标准名称
	salary_sum double(9,2) not null,-- salary_sum" : 薪酬总额 
	new_salary_standard_id varchar(30) not null,-- new_salary_standard_id" : 新薪酬标准编号
	new_salary_standard_name varchar(60) not null,-- new_salary_standard_name" : 新薪酬标准名称
	new_salary_sum double(9,2) not null,-- new_salary_sum" : 新薪酬总额 
	change_reason text not null,-- change_reason" : 调动原因
	check_reason text not null,-- check_reason" : 审核通过意见 
	check_status varchar(20) not null,-- check_status" : 复核通过状态
	register varchar(60) not null,-- register" : 登记人
	checker varchar(60) not null,-- checker" : 复核人
	regist_time varchar(20) not null,-- regist_time" : 登记时间   
	check_time varchar(20) not null)  -- check_time" : 复核时间 







-- 职位发表登记表                                                           
create table engage_major_release ( 
	mre_id int primary key auto_increment,	-- 主键，自动增长列 
	first_kind_id char(2) not null,			-- 一级机构编号
	first_kind_name varchar(60) not null,		-- 一级机构名称
	second_kind_id char(2) not null,			-- 二级机构编号
	second_kind_name varchar(60) not null,	-- 二级机构名称
	third_kind_id char(2) not null,			-- 三级机构编号
	third_kind_name varchar(60) not null,		-- 三级机构名称
	major_kind_id char(2) not null,			-- 职位分类编号
	major_kind_name varchar(60) not null,		-- 职位分类名称
	major_id char(2) not null,				-- 职位编号
	major_name varchar(60) not null,			-- 职位名称
	human_amount int not null,			-- 招聘人数
	engage_type varchar(60) not null,			-- 招聘类型
	deadline date not null,				-- 截至日期
	register varchar(60) not null,			-- 登记人
	changer varchar(60) not null,				-- 变更人
	regist_time date not null,			-- 登记时间
	change_time date not null,			-- 变更时间
	major_describe text not null,				-- 职位描述
	engage_required text not null				-- 招聘要求
)  



-- 试卷详细信息                                                             
create table engage_exam_details ( 
	exd_id int primary key auto_increment,	-- 主键，自动增长列  
	exam_number varchar(30) not null,			-- 试卷编号 
	first_kind_id char(2) not null,			-- 试题一级分类编号 
	first_kind_name varchar(60) not null,		-- 试题一级分类名称
	second_kind_id char(2) not null,			-- 试题二级分类编号
	second_kind_name varchar(60) not null,	-- 试题二级分类名称    
	question_amount int not null			-- 出题数量 
)  



-- 试卷登记表                                                                      
create table engage_exam ( 
	exa_id int primary key auto_increment,	-- 主键，自动增长列 
	exam_number varchar(30) not null,			-- 试卷编号
	major_kind_id char(2) not null,			-- 职位分类编号
	major_kind_name varchar(60) not null,		-- 职位分类名称      
	major_id char(2) not null,				-- 职位编号
	major_name varchar(60) not null,			-- 职位名称     
	register varchar(60) not null,			-- 登记人     
	regist_time date not null,			-- 登记时间
	limite_time int not null				-- 答题限时
)  



-- 考试答题登记表                                                                  
create table engage_answer ( 
	ans_id int primary key auto_increment,	-- 主键，自动增长列  
	answer_number varchar(30) not null,		-- 答案编号
	exam_number varchar(30) not null,			-- 试卷编号
	resume_id int not null,				-- 简历编号
	interview_id int not null,			-- 面试编号    
	human_name varchar(60) not null,			-- 姓名 
	human_idcard varchar(30) not null,		-- 身份证号
	major_kind_id char(2) not null,			-- 职位分类编号
	major_kind_name char(10) not null,		-- major_kind_name 属于 engage_answer 
	major_id char(10) not null,				-- major_id 属于 engage_answer 
	major_name char(10) not null,				-- major_name 属于 engage_answer
	test_time date not null,				-- 测试时间  
	use_time varchar(20) not null,			-- use_time 属于 engage_answer 
	total_point double(5,2) not null			--总分  
) 


--考试答题详细信息                                                         
create table engage_answer_details ( 
	and_id int primary key auto_increment,	-- 答案详细信息
	answer_number varchar(30) not null,		-- 答案编号
	subject_id int not null,				-- 试题编号
	answer varchar(10) not null				-- 答题者答案
) 


--试题题库登记表                                                                
create table engage_subjects ( 
	sub_id int primary key auto_increment,	-- 主键，自动增长列     
	first_kind_id char(2) not null,			-- 试题I级分类编号     
	first_kind_name varchar(60) not null,		-- 试题I级分类名称
	second_kind_id char(2) not null,			-- 试题II级分类编号
	second_kind_name varchar(60) not null,	-- 试题II级分类名称   
	register varchar(60) not null,			-- 登记人     
	regist_time date not null,			-- 登记时间 
	derivation varchar(60) not null,			-- 试题出处 
	content text not null,					-- 题干 
	key_a text,						-- 答案a
	key_b text,						-- 答案b
	key_c text,						-- 答案c
	key_d text,						-- 答案d
	key_e text,						-- 答案e 
	correct_key varchar(10) not null,			-- 正确答案	
	changer varchar(60) not null,				-- 变更人
	change_time date not null				-- 变更时间
) 


--简历管理表                                                                     
create table engage_resume ( 
	res_id int primary key auto_increment,		-- 主键，自动增长列
	human_name varchar(60) not null,				-- 姓名
	engage_type varchar(30) not null,				-- 招聘类型
	human_address varchar(200) not null,			-- 地址
	human_postcode varchar(10) not null,			-- 邮编
	human_major_kind_id char(2) not null,			-- 职位分类编号
	human_major_kind_name varchar(60) not null,	-- 职位分类名称
	human_major_id char(2) not null,				-- 职位编号
	human_major_name varchar(60) not null,		-- 职位名称
	human_telephone varchar(60) not null,			-- 电话号码
	human_homephone"" varchar(60) not null,			-- 家庭电话    
	human_mobilephone varchar(60) not null,		-- 手机 
	human_email varchar(60) not null,				-- Email
	human_hobby varchar(200) not null,			-- 兴趣爱好
	human_specility varchar(200) not null,		-- 特长 
	human_sex char(2) not null,					-- 性别   
	human_religion varchar(60) not null,			-- 宗教信仰
	human_party varchar(60) not null,				-- 政治面貌   
	human_nationality varchar(60) not null,		-- 国籍    
	human_race varchar(60) not null,				-- 民族
	human_birthday date not null,				-- 生日
	human_age int not null,					-- 年龄  
	human_educated_degree varchar(60) not null,	-- 教育程度    
	human_educated_years int not null,		-- 教育年限 
	human_educated_major varchar(60) not null,	-- 专业
	human_college varchar(60) not null,			-- 毕业院校 
	human_idcard varchar(60) not null,			-- 身份证号
	human_birthplace varchar(200) not null,		-- 出生地
	demand_salary_standard double(15,2) not null,-- 薪酬标准    
	human_history_records text not null,			-- 个人履历
	remark text not null,							--备注   
	recomandation text not null,					-- 推荐意见
	human_picture varchar(60) not null,			-- 照片
	attachment_name varchar(60) not null,			-- 档案附件
	check_status int not null,				-- 复核状态
	register varchar(60) not null,				-- 登记人
	regist_time date not null,				-- 登记时间
	checker varchar(60) not null,					-- 复核人姓名
	check_time date not null,					-- 复核时间
	interview_status int not null,			-- 面试状态
	total_points float not null,					-- 总分
	test_amount int not null,				-- 考试次数
	test_checker varchar(60) not null,			-- 测试复核人
	test_check_time date not null,			-- 测试复核时间
	pass_register varchar(60) not null,			-- 通过登记人姓名
	pass_regist_time date not null,			-- 通过登记时间
	pass_checker varchar(60) not null,			-- 通过复核人姓名
	pass_check_time date not null,			-- 通过复核时间
	pass_check_status int not null,			-- 通过的复核状态
	pass_checkComment varchar(60) not null,		-- 录用申请审核意见
	pass_passComment varchar(60) not null			-- 录用申请审批意见
)  


--面试表                                                                   
create table engage_interview ( 
	ein_id int primary key auto_increment,		-- 主键，自动增长列  
	human_name varchar(60) not null,				-- 姓名
	interview_amount int not null,			-- 面试次数 
	human_major_kind_id char(2) not null,			-- 职位分类编号
	human_major_kind_name varchar(30) not null,	-- 职位分类名称 
	human_major_id char(2) not null,				-- 职位编号 
	human_major_name varchar(30) not null,		-- 职位名称
	image_degree varchar(20) not null,			-- 形象等级 
	native_language_degree varchar(20) not null,	-- 口才等级
	foreign_language_degree varchar(20) not null,	-- 外语水平等级 
	response_speed_degree varchar(20) not null,	-- 应变能力
	EQ_degree varchar(20) not null,				-- EQ等级 
	IQ_degree varchar(20) not null,				-- IQ_等级         
	multi_quality_degree varchar(20) not null,	-- 综合素质   
	register varchar(60) not null,				-- 面试人
	checker varchar(60) not null,					-- 筛选人   
	registe_time date not null,				-- 面试时间   
	check_time date not null,					-- 筛选时间 
	resume_id int not null,					-- 简历编号
	result varchar(20) not null,					-- 面试结果
	interview_comment text not null,				-- 面试评价
	check_comment text not null,					-- 筛选评价
	interview_status int not null,			-- 面试状态   
	check_status int not null				-- 筛选状态
)  