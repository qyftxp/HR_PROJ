--这是薪酬部分 表的集合

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
	