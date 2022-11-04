--SQL_DDL
--Первая часть.

--Таблица employees

--Создать таблицу employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null
--Наполнить таблицу employee 70 строками.

create table employees(
    id serial primary key,
    employee_name varchar(50) not null
);

insert into employees(employee_name)
values ('Lena_1'),
       ('Lena_2'),
       ('Lena_3'),
       ('Lena_4'),
       ('Lena_5'),
       ('Lena_6'),
       ('Lena_7'),
       ('Lena_8'),
       ('Lena_9'),
       ('Lena_10'),
       ('Lena_11'),
       ('Lena_12'),
       ('Lena_13'),
       ('Lena_14'),
       ('Lena_15'),
       ('Lena_16'),
       ('Lena_17'),
       ('Lena_18'),
       ('Lena_19'),
       ('Lena_20'),
       ('Lena_21'),
       ('Lena_22'),
       ('Lena_23'),
       ('Lena_24'),
       ('Lena_25'),
       ('Lena_26'),
       ('Lena_27'),
       ('Lena_28'),
       ('Lena_29'),
       ('Lena_30'),
       ('Lena_31'),
       ('Lena_32'),
       ('Lena_33'),
       ('Lena_34'),
       ('Lena_35'),
       ('Lena_36'),
       ('Lena_37'),
       ('Lena_38'),
       ('Lena_39'),
       ('Lena_40'),
       ('Lena_41'),
       ('Lena_42'),
       ('Lena_43'),
       ('Lena_44'),
       ('Lena_45'),
       ('Lena_46'),
       ('Lena_47'),
       ('Lena_48'),
       ('Lena_49'),
       ('Lena_50'),
       ('Lena_51'),
       ('Lena_52'),
       ('Lena_53'),
       ('Lena_54'),
       ('Lena_55'),
       ('Lena_56'),
       ('Lena_57'),
       ('Lena_58'),
       ('Lena_59'),
       ('Lena_60'),
       ('Lena_61'),
       ('Lena_62'),
       ('Lena_63'),
       ('Lena_64'),
       ('Lena_65'),
       ('Lena_66'),
       ('Lena_67'),
       ('Lena_68'),
       ('Lena_69'),
       ('Lena_70');
      
      
 --Таблица salary

--Создать таблицу salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null
--Наполнить таблицу salary 15 строками:
--- 1000
--- 1100
--- 1200
--- 1300
--- 1400
--- 1500
--- 1600
--- 1700
--- 1800
--- 1900
--- 2000
--- 2100
--- 2200
--- 2300
--- 2400
--- 2500


 create table salary(
id serial primary key,
monthly_salary int not null 
);

insert into salary(monthly_salary)
values (1000),
       (1100),
       (1200),
       (1300),
       (1400),
       (1500),
       (1600),
       (1700),
       (1800),
       (1900),
       (2000),
       (2100),
       (2200),
       (2300),
       (2400),
       (2500);
  
      
      
 --Таблица employee_salary

--Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null
--Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id
      
 create table employee_salary(
    id serial primary key,
    employee_id int  unique not null,
    salary_id int not null,
   foreign key (employee_id)
      references employees(id),
     foreign key (salary_id)
       references salary(id)
    ); 
 
   insert into employee_salary(employee_id, salary_id)
   values (3, 7),
          (1, 4),
          (5, 9),
          (40, 13),
          (23, 4),
          (11, 2),
          (52, 10),
          (15, 13),
          (26, 4),
          (16, 1),
          (33, 7),
          (2, 6),
          (7, 4),
          (9, 9),
          (39, 13),
          (25, 4),
          (12, 2),
          (67, 10),
          (17, 13),
          (28, 4),
          (19, 1),
          (31, 7),
          (22, 6),
          (14, 13),
          (21, 4),
          (20, 1),
          (36, 7),
          (10, 6),
          (29, 4),
          (79, 9),
          (41, 13),
          (35, 4),
          (18, 2),
          (55, 10),
          (27, 13),
          (38, 4),
          (42, 1),
          (44, 7),
          (48, 6),
          (51, 15),
          (47, 13),
          (43, 10);
          
          
  --Таблица roles

--Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique

    
 create table roles (
 id serial primary key,
 role_name int unique not null
 );        

 --Поменять тип столба role_name с int на varchar(30)


alter table roles
alter column role_name type varchar(30);

--Наполнить таблицу roles 20 строками: 

insert into roles(role_name)
values ('Junior Python developer'),
       ('Middle Python developer'),
       ('Senior Python developer'),
       ('Junior Java developer'),
       ('Middle Java developer'),
       ('Senior Java developer'),
       ('Junior JavaScript developer'),
       ('Middle JavaScript developer'),
       ('Senior JavaScript developer'),
       ('Junior Manual QA engineer'),
       ('Middle Manual QA engineer'),
       ('Senior Manual QA engineer'),
       ('Project Manager'),
       ('Designer'),
       ('HR'),
       ('CEO'),
       ('Sales manager'),
       ('Junior Automation QA engineer'),
       ('Middle Automation QA engineer'),
       ('Senior Automation QA engineer');
       
       
--Таблица roles_employee

--Создать таблицу roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
      
create table roles_employee(
   id serial primary key,
   employee_id int unique not null,
   role_id int not null,
    foreign key  (employee_id)
      references employees(id),
     foreign key (role_id)
       references roles(id)
    ); 
     
      
--Наполнить таблицу roles_employee 40 строками:
          
   insert into roles_employee(employee_id, role_id)
   values (7, 20),
          (20, 4),
          (3, 9),
          (5, 13),
          (23, 4),
          (11, 2),
          (10, 9),
          (22,13),
          (21, 3),
          (34, 4),
          (6, 7),
          (8, 5),
          (27, 5),
          (4, 10),
          (49, 13),
          (25, 4),
          (12, 2),
          (17, 9),
          (26,13),
          (45, 3),
          (33, 4),
          (13, 7),
          (46, 13),
          (42, 4),
          (41, 2),
          (14, 9),
          (39, 13),
          (37, 3),
          (32, 4),
          (31, 7),
          (18, 9),
          (29, 5),
          (54, 11),
          (47, 13),
          (24, 4),
          (16, 2),
          (1, 9),
          (2, 13),
          (52, 3),
          (38, 4),
          (19, 7);
          
         

     

select*from salary;
select*from roles;
select *from roles_salary;
select*from employee_salary;
select*from employees;
select*from roles_employee;


