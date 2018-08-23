--这是系统有关的表  有用户表 有公共字段 有部门表
create table users (            --登录用户表
	u_id 			int   auto_increment primary key,    --user_id : 主键，自动增长列        
	u_name 			varchar(60) not null,			--user_name" : 用户名 
	u_true_name 	varchar(60) not null		--user_true_name" : 真实姓名 
	user_position 	varchar(20)  not null,		--user_position   职位   根据职位名称有不同的权限
	u_password 		varchar(60) not null)        --user_password" : 密码    

	
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

