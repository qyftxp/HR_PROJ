 --1.职位发表登记表                                                           
create table engage_major_release ( 
	mre_id int primary key auto_increment,	-- 主键，自动增长列 
	department_id  int,   					-- 部门编号
	department_name varchar(20), 			-- 部门名称
	major_kind_id char(2),					-- 职位分类编号
	major_kind_name varchar(60),			-- 职位分类名称
	major_id char(2),						-- 职位编号
	major_name varchar(60),					-- 职位名称
	human_amount int,						-- 招聘人数
	engage_type varchar(60),				-- 招聘类型
	deadline date,							-- 截至日期
	register varchar(60),					-- 登记人
	changer varchar(60),					-- 变更人
	regist_time date,						-- 登记时间
	change_time date,						-- 变更时间
	major_describe text,					-- 职位描述
	engage_required text					-- 招聘要求
);
drop table engage_major_release;
select * from engage_major_release;
	
--2.简历管理表                                                                     
create table engage_resume ( 
	res_id int primary key auto_increment,		-- 主键，自动增长列
	human_name varchar(30),						-- 姓名
	engage_type varchar(30),					-- 招聘类型
	human_address varchar(200),					-- 地址
	human_postcode varchar(10),					-- 邮编
	human_major_kind_id char(2),				-- 职位分类编号
	human_major_kind_name varchar(60),			-- 职位分类名称
	human_major_id char(2),						-- 职位编号
	human_major_name varchar(60),				-- 职位名称
	human_telephone varchar(60),				-- 电话号码
	human_email varchar(60),					-- Email
	human_hobby varchar(200),					-- 兴趣爱好
	human_specility varchar(200),				-- 特长 
	human_sex char(2),							-- 性别   
	human_party varchar(60),					-- 政治面貌   
	human_race varchar(60),						-- 民族
	human_age int,								-- 年龄  
	human_educated_degree varchar(60),			-- 教育程度    
	human_educated_major varchar(60),			-- 专业
	human_college varchar(60),					-- 毕业院校 
	human_idcard varchar(60),					-- 身份证号
	demand_salary_standard double(15,2),		-- 薪酬标准    
	human_history_records text,					-- 个人履历
	remark text,								-- 备注   
	recomandation text,							-- 推荐意见
	human_picture varchar(60),					-- 照片
	check_status int,							-- 复核状态
	register varchar(60),						-- 登记人
	regist_time date,							-- 登记时间
	checker varchar(60),						-- 复核人姓名
	check_time date,							-- 复核时间
	interview_status int,						-- 面试状态
	total_points int,							-- 总分
	test_amount int,							-- 考试次数
	test_checker varchar(60),					-- 测试复核人
	test_check_time date,						-- 测试复核时间
	pass_register varchar(60),					-- 通过登记人姓名
	pass_regist_time date,						-- 通过登记时间
	pass_checker varchar(60),					-- 通过复核人姓名
	pass_check_time date,						-- 通过复核时间
	pass_check_status int,						-- 通过的复核状态
	pass_checkComment varchar(60),				-- 录用申请审核意见
	pass_passComment varchar(60) 				-- 录用申请审批意见
)  

--3.面试表                                                                   
create table engage_interview ( 
	ein_id int primary key auto_increment,		-- 主键，自动增长列  
	human_name varchar(30),						-- 姓名
	interview_amount int,						-- 面试次数 
	human_major_kind_id char(2),				-- 职位分类编号
	human_major_kind_name varchar(30),			-- 职位分类名称 
	human_major_id char(2),						-- 职位编号 
	human_major_name varchar(30),				-- 职位名称
	image_degree varchar(20),					-- 形象等级 
	native_language_degree varchar(20),			-- 口才等级
	foreign_language_degree varchar(20),		-- 外语水平等级 
	response_speed_degree varchar(20),			-- 应变能力
	EQ_degree varchar(20),						-- EQ等级 
	IQ_degree varchar(20),						-- IQ_等级         
	multi_quality_degree varchar(20),			-- 综合素质   
	register varchar(30),						-- 面试人
	checker varchar(30),						-- 筛选人   
	registe_time date,							-- 面试时间   
	check_time date,							-- 筛选时间 
	resume_id int,								-- 简历编号
	result varchar(20),							-- 面试结果
	interview_comment text,						-- 面试评价
	check_comment text,							-- 筛选评价
	interview_status int,						-- 面试状态   
	check_status int 							-- 筛选状态
)  
