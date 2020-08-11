/*建数据库*/
drop database if exists student_examination_sys;
create database student_examination_sys;
use  student_examination_sys;
/*建表*/
drop table if exists student;
create table  student  
( id     varchar(5)  not null,
  name   varchar(10),
  age    int ,
  sex    varchar(1)
);
insert into student(id,name,age,sex)
values( '001','张三',18,'男'),('002','李四',20,'女');

drop table if exists subject;
create table  subject  
( id           int  not null,
  subject      varchar(10),
  teacher      varchar(10),
  description  varchar(20)
);
insert into subject(id,subject,teacher,description)
values( 1001,'语文','王老师','本次考试比较简单'),(1002,'数学','刘老师','本次考试比较难');

drop table if exists score;
create table  score  
( id           int  not null,
  student_id   varchar(5),
  subject_id   int,
  score        float
);
insert into score(id,student_id,subject_id,score)
values( 1,'001',1001,80),(2,'002',1002,60),(3,'001',1001,70),(4,'002',1002,60.5);
/*展示结果*/
select * from student;
select * from subject;
select * from score;
show tables;