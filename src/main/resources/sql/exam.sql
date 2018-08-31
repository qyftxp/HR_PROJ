--1.试卷详细信息                                                             
create table engage_exam_details ( 
	exd_id int primary key auto_increment,	-- 主键，自动增长列  
	exam_number varchar(30),				-- 试卷编号 
	first_kind_id char(2),					-- 试题一级分类编号 
	first_kind_name varchar(60),			-- 试题一级分类名称
	second_kind_id char(2),					-- 试题二级分类编号
	second_kind_name varchar(60),			-- 试题二级分类名称    
	question_amount int 					-- 出题数量 
)  

--2.试卷登记表                                                                      
create table engage_exam ( 
	exa_id int primary key auto_increment,	-- 主键，自动增长列 
	exam_number varchar(30),				-- 试卷编号
	major_kind_id char(2),					-- 职位分类编号
	major_kind_name varchar(60),			-- 职位分类名称      
	major_id char(2),						-- 职位编号
	major_name varchar(60),					-- 职位名称     
	register varchar(60),					-- 登记人     
	regist_time date,						-- 登记时间
	limite_time int 						-- 答题限时
)  

--3.考试答题登记表                                                                  
create table engage_answer ( 
	ans_id int primary key auto_increment,	-- 主键，自动增长列  
	answer_number varchar(30),				-- 答案编号
	exam_number varchar(30),				-- 试卷编号
	resume_id int,							-- 简历编号
	interview_id int,						-- 面试编号    
	human_name varchar(60),					-- 姓名 
	human_idcard varchar(30),				-- 身份证号
	major_kind_id char(2),					-- 职位分类编号
	major_kind_name varchar(10),				-- major_kind_name 属于 engage_answer 
	major_id char(2),						-- major_id 属于 engage_answer 
	major_name varchar(10),					-- major_name 属于 engage_answer
	test_time date,							-- 测试时间  
	use_time varchar(20),					-- use_time 属于 engage_answer 
	total_point int							-- 总分  
)  
select * from engage_answer;
drop table engage_answer;

--4.考试答题详细信息                                                         
create table engage_answer_details ( 
	and_id int primary key auto_increment,	-- 答案详细信息
	answer_number varchar(30),				-- 答案编号
	subject_id int,							-- 试题编号
	answer varchar(10) 						-- 答题者答案
)  

--5.试题题库登记表                                                                
create table engage_subjects ( 
	sub_id int primary key auto_increment,	-- 主键，自动增长列     
	first_kind_id char(2),					-- 试题I级分类编号     
	first_kind_name varchar(60),			-- 试题I级分类名称
	second_kind_id char(2),					-- 试题II级分类编号
	second_kind_name varchar(60),			-- 试题II级分类名称   
	register varchar(60),					-- 登记人     
	regist_time date,						-- 登记时间 
	derivation varchar(60),					-- 试题出处 
	content text,							-- 题干 
	key_a text,								-- 答案a
	key_b text,								-- 答案b
	key_c text,								-- 答案c
	key_d text,								-- 答案d
	correct_key varchar(10),				-- 正确答案	
	changer varchar(60),					-- 变更人
	change_time date						-- 变更时间
)  