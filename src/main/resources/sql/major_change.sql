--这是部门调度表
/* 创建新表 "major_change"。                                                                    
/* "major_change" : 职位调动表             
 * 
 */
 
 */

delete from major_change;

select * from  major_change; 
drop table major_change;
create table major_change ( 
	mch_id int auto_increment primary key,  -- mch_id" : 主键，自动增长列  
	department_name varchar(20)   , -- 部门名称
	
	major_kind_name varchar(60) ,-- major_kind_name" : 职位分类名称
	
	major_name varchar(60) ,-- major_name" : 职位名称 
	new_department_name varchar(20)  , -- 新部门名称
	
	new_major_kind_name varchar(60) ,-- new_major_kind_name" : 新职位分类名称
	
	new_major_name varchar(60) ,-- new_major_name" : 新职位名称
	human_id varchar(60) ,  -- human_id" : 人力资源档案编号
	human_name varchar(60) ,-- human_name" : 姓名 
	
	salary_standard_name varchar(60) ,-- salary_standard_name" : 薪酬标准名称
	salary_sum double(9,2) ,-- salary_sum" : 薪酬总额 
	
	new_salary_standard_name varchar(60) ,-- new_salary_standard_name" : 新薪酬标准名称
	new_salary_sum double(9,2) ,-- new_salary_sum" : 新薪酬总额 
	change_reason text ,-- change_reason" : 调动原因
	check_reason text ,-- check_reason" : 审核通过意见 
	check_status varchar(20) ,-- check_status" : 复核通过状态
	register varchar(60) ,-- register" : 登记人
	checker varchar(60) ,-- checker" : 复核人
	regist_time varchar(20) ,-- regist_time" : 登记时间   
	check_time varchar(20), 
	status varchar(20)
	)  -- check_time" : 复核时间 
