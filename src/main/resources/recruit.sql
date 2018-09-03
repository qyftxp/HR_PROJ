 --1.ְλ����ǼǱ�                                                           
create table engage_major_release ( 
	mre_id int primary key auto_increment,	-- �������Զ������� 
	department_id  int,   					-- ���ű��
	department_name varchar(20), 			-- ��������
	major_kind_id char(2),					-- ְλ������
	major_kind_name varchar(60),			-- ְλ��������
	major_id char(2),						-- ְλ���
	major_name varchar(60),					-- ְλ����
	human_amount int,						-- ��Ƹ����
	engage_type varchar(60),				-- ��Ƹ����
	deadline date,							-- ��������
	register varchar(60),					-- �Ǽ���
	changer varchar(60),					-- �����
	regist_time date,						-- �Ǽ�ʱ��
	change_time date,						-- ���ʱ��
	major_describe text,					-- ְλ����
	engage_required text					-- ��ƸҪ��
);
drop table engage_major_release;
select * from engage_major_release;
	
--2.���������                                                                     
create table engage_resume ( 
	res_id int primary key auto_increment,		-- �������Զ�������
	human_name varchar(30),						-- ����
	engage_type varchar(30),					-- ��Ƹ����
	human_address varchar(200),					-- ��ַ
	human_postcode varchar(10),					-- �ʱ�
	human_major_kind_id char(2),				-- ְλ������
	human_major_kind_name varchar(60),			-- ְλ��������
	human_major_id char(2),						-- ְλ���
	human_major_name varchar(60),				-- ְλ����
	human_telephone varchar(60),				-- �绰����
	human_email varchar(60),					-- Email
	human_hobby varchar(200),					-- ��Ȥ����
	human_specility varchar(200),				-- �س� 
	human_sex char(2),							-- �Ա�   
	human_party varchar(60),					-- ������ò   
	human_race varchar(60),						-- ����
	human_age int,								-- ����  
	human_educated_degree varchar(60),			-- �����̶�    
	human_educated_major varchar(60),			-- רҵ
	human_college varchar(60),					-- ��ҵԺУ 
	human_idcard varchar(60),					-- ���֤��
	demand_salary_standard double(15,2),		-- н���׼    
	human_history_records text,					-- ��������
	remark text,								-- ��ע   
	recomandation text,							-- �Ƽ����
	human_picture varchar(60),					-- ��Ƭ
	check_status int,							-- ����״̬
	register varchar(60),						-- �Ǽ���
	regist_time date,							-- �Ǽ�ʱ��
	checker varchar(60),						-- ����������
	check_time date,							-- ����ʱ��
	interview_status int,						-- ����״̬
	total_points int,							-- �ܷ�
	test_amount int,							-- ���Դ���
	test_checker varchar(60),					-- ���Ը�����
	test_check_time date,						-- ���Ը���ʱ��
	pass_register varchar(60),					-- ͨ���Ǽ�������
	pass_regist_time date,						-- ͨ���Ǽ�ʱ��
	pass_checker varchar(60),					-- ͨ������������
	pass_check_time date,						-- ͨ������ʱ��
	pass_check_status int,						-- ͨ���ĸ���״̬
	pass_checkComment varchar(60),				-- ¼������������
	pass_passComment varchar(60) 				-- ¼�������������
)  

--3.���Ա�                                                                   
create table engage_interview ( 
	ein_id int primary key auto_increment,		-- �������Զ�������  
	human_name varchar(30),						-- ����
	interview_amount int,						-- ���Դ��� 
	human_major_kind_id char(2),				-- ְλ������
	human_major_kind_name varchar(30),			-- ְλ�������� 
	human_major_id char(2),						-- ְλ��� 
	human_major_name varchar(30),				-- ְλ����
	image_degree varchar(20),					-- ����ȼ� 
	native_language_degree varchar(20),			-- �ڲŵȼ�
	foreign_language_degree varchar(20),		-- ����ˮƽ�ȼ� 
	response_speed_degree varchar(20),			-- Ӧ������
	EQ_degree varchar(20),						-- EQ�ȼ� 
	IQ_degree varchar(20),						-- IQ_�ȼ�         
	multi_quality_degree varchar(20),			-- �ۺ�����   
	register varchar(30),						-- ������
	checker varchar(30),						-- ɸѡ��   
	registe_time date,							-- ����ʱ��   
	check_time date,							-- ɸѡʱ�� 
	resume_id int,								-- �������
	result varchar(20),							-- ���Խ��
	interview_comment text,						-- ��������
	check_comment text,							-- ɸѡ����
	interview_status int,						-- ����״̬   
	check_status int 							-- ɸѡ״̬
)  
