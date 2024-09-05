SELECT * from employee_attirtion;
use employee_attrition;
select Attrition,count(*) from employee_attirtion group by Attrition;
describe employee_attirtion;
select distinct(BusinessTravel) from employee_attirtion;
select BusinessTravel,count(*) from employee_attirtion group by BusinessTravel;
select distinct(JobRole) from employee_attirtion;
select JobRole,count(*) from employee_attirtion group by JobRole;
select distinct(HourlyRate) from employee_attirtion;
select HourlyRate,count(*) from employee_attirtion group by HourlyRate;
select  distinct (EducationField) from employee_attirtion;
select EducationField,count(*) from employee_attirtion group by EducationField;
select EducationField,count(*) from employee_attirtion group by EducationField desc limit 1;
select HourlyRate,count(*) from employee_attirtion group by HourlyRate;
select JobRole,count(*) from employee_attirtion group by JobRole;
select max(DailyRate) from employee_attirtion group by gender;
select min(DailyRate) from employee_attirtion group by gender;
select (DailyRate) from employee_attirtion;
select age ,case when age<30  then "young age"
when age>=30 and age<40 then "middle age"
else "old age" end as age_category from employee_attirtion;
alter table employee_attirtion add column age_category varchar(15);
update employee_attirtion set age_category=case when age<30  then "young age"
when age>=30 and age<40 then "middle age"
else "old age" end;
select age_category,count(*) from employee_attirtion group by age_category;
select distinct Department from employee_attirtion;
select age,count(*) from employee_attirtion group by age;
select Gender,count(*) from employee_attirtion group by Gender;
select Department,count(*) from employee_attirtion group by Department;
select JobSatisfaction,count(*) from employee_attirtion group by JobSatisfaction;
alter table employee_attirtion drop column `?`;
select gender,count(*) from employee_attirtion where EducationField='Life Sciences' group by gender;
select gender,count(*) from employee_attirtion where EducationField='Human Resources' group by gender;
select gender,count(*) from employee_attirtion where EducationField='Medical' group by gender;
select gender,count(*) from employee_attirtion where EducationField='Other' group by gender;
select gender,count(*) from employee_attirtion where EducationField='Marketing' group by gender;
select gender,count(*) from employee_attirtion where BusinessTravel='Travel_Rarely' group by gender;
select gender,count(*) from employee_attirtion where BusinessTravel='Travel_Frequently' group by gender;
select gender,count(*) from employee_attirtion where BusinessTravel='Non-Travel' group by gender;
select Attrition,count(*) from employee_attirtion group by Attrition;
select gender, max(DailyRate) from employee_attirtion group by gender;
select gender,min(DailyRate) from employee_attirtion group by gender;
select gender,avg(DailyRate) from employee_attirtion group by gender;
select MaritalStatus,count(*) from employee_attirtion group by MaritalStatus;
select gender,count(*) from employee_attirtion where MaritalStatus='Single' group by gender;
select gender,count(*) from employee_attirtion where MaritalStatus='Divorced' group by gender;
select gender,count(*) from employee_attirtion where MaritalStatus='Married' group by gender;
select gender,count(*) from employee_attirtion where HourlyRate='Male';
select distinct(HourlyRate) from employee_attirtion;
select HourlyRate,count(*) from employee_attirtion group by HourlyRate;
select max(hourlyRate) from employee_attirtion  where Gender='Male'order by HourlyRate;
select max(hourlyRate) from employee_attirtion  where Gender='Female'order by HourlyRate;
select min(hourlyRate) from employee_attirtion  where Gender='Male'order by HourlyRate;
select min(hourlyRate) from employee_attirtion  where Gender='Female'order by HourlyRate;
select avg(hourlyRate) from employee_attirtion  where Gender='Male'order by HourlyRate;
select avg(hourlyRate) from employee_attirtion  where Gender='Female'order by HourlyRate;
alter table employee_attirtion add column HourlyRate_category int;
ALTER TABLE employee_attirtion DROP column Rate_category;
select HourlyRate ,case when HourlyRate<40  then "low"
when HourlyRate>=40 and HourlyRate<=70 then "Medium"
else "High" end as HourlyRate_category from employee_attirtion;
ALTER TABLE employee_attirtion MODIFY COLUMN HourlyRate_category ENUM('Low', 'Medium', 'High');
update employee_attirtion set HourlyRate_category=case when HourlyRate<40  then 'low'
when HourlyRate>=40 and HourlyRate<=70 then 'Medium'
else 'High' end;
set sql_safe_updates=0;
select age_category,count(*) from employee_attirtion where Attrition='Yes' group by age_category;
select age_category,count(*) from employee_attirtion where Attrition='No' group by age_category;
select age_category,count(*) from employee_attirtion where Attrition='No' group by age_category;
select BusinessTravel,count(*) from employee_attirtion where Attrition='Yes' group by BusinessTravel;
select * from employee_attirtion where gender='Female' and MonthlyRate>=5000 order by age limit 20;