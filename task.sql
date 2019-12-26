create table intask(
task_id number,
task_name varchar2(30) notnull,
task_performer varchar2(20) notnull,
deadline_date date notnull,
completed_date date notnull,
task_status varchar2(20) default assigned,
constraint task_id_pk primarykey(task_id),
constraint taskname_uq unique(task_name),
constraint task_status_cq check(task_status in ('completed','not completed'));
inset into task(task_id,task_name,task_performer,deadline_date,completed_date,status)values(1,'open your lap','MK',to_date('12.12.2019','dd-mm-yyyy),to_date('12.12.2019','dd-mm-yyyy),'completed'));
select*from task where task_status='completed';
