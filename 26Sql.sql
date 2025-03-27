-String-

select instr('dhoni','o')
SELECT Full_Name ,INSTR(Full_Name,'M') FROM Cricket_info;
select  Full_Name ,substr(Full_Name,2,7) from Cricket_info;
select  substr('Laptop',1,4)
select Full_Name ,length(Full_Name) FROM Cricket_info;
select  length('Laptop')
select Full_Name ,upper(Full_Name) FROM Cricket_info;
select  upper('Laptop');
select Full_Name ,lower(Full_Name) FROM Cricket_info;
select  lower('Laptop');

select concat(Full_Name,Opponent_Team,venue,Format) FROM Cricket_info;

-Aggregrate-

select  sum(no_of_fours)as sum_of from Cricket_info;
select  Max(no_of_fours)as max_of from Cricket_info;
select  Min(no_of_fours)as min_of from Cricket_info;
select  avg(no_of_fours)as avg_of from Cricket_info;
select  count(no_of_fours)as count_of from Cricket_info;
