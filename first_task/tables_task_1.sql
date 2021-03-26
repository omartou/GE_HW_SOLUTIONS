create database olddb;
create database newdb;

-- olddb

create table student(id integer auto_increment primary key, first_name varchar(40), last_name varchar(40), age double);


insert into student(first_name, last_name, age) values ('Alan', 'Snappy', 16.0);
insert into student(first_name, last_name, age) values ('Maria', 'Foster', 17.0 
);
insert into student(first_name, last_name, age) values ('Michale', 'Robbin', 18.0
);
insert into student(first_name, last_name, age) values ('Enric', 'Dosio', 15.0
);
insert into student(first_name, last_name, age) values ('Joseph', 'Dosni', 14.0
);
insert into student(first_name, last_name, age) values ('Zanifer', 'Emily', 16.0
);
insert into student(first_name, last_name, age) values ('Kuleswar', 'Sitaraman', 16.0
);
insert into student(first_name, last_name, age) values ('Henrey', 'Gabriel', 17.0
);
insert into student(first_name, last_name, age) values ('Alex', 'Manuel', 19.0
);
insert into student(first_name, last_name, age) values ('George', 'Mardy', 16.0 
);

create table other_employee(id Integer auto_increment primary key, first_name varchar(40), last_name varchar(40), age integer, role varchar(40), salary double);


insert into other_employee(first_name, last_name, age, role, salary) values ('Michael', 'Jones', 45, 'volunteer', 0.0);
insert into other_employee(first_name, last_name, age, role, salary) values ('David', 'Rodriguez', 38, 'volunteer', 0.0);
insert into other_employee(first_name, last_name, age, role, salary) values ('Christopher', 'Taylor', 38, 'volunteer', 0.0);
insert into other_employee(first_name, last_name, age, role, salary) values ('Nancy', 'Moore', 49, 'volunteer', 0.0);
insert into other_employee(first_name, last_name, age, role, salary) values ('Thomas', 'Gonzalez', 57, 'volunteer', 0.0);


create table employee(id integer auto_increment primary key, first_name varchar(40), last_name varchar(40), age double, role varchar(40), salary double);

insert into employee(first_name, last_name, age, role, salary) values ('John', 'Smith', 56.0, 'teacher', 1200.0);
insert into employee(first_name, last_name, age, role, salary) values ('Patricia', 'Johnson', 54.0, 'teacher', 1200.0);
insert into employee(first_name, last_name, age, role, salary) values ('Robert', 'Williams', 35.0, 'teacher', 1500.0);
insert into employee(first_name, last_name, age, role, salary) values ('William', 'Miller', 41.0, 'teacher', 1500.0);
insert into employee(first_name, last_name, age, role, salary) values ('Elizabeth', 'Davis', 39.0, 'teacher', 1400.0);
insert into employee(first_name, last_name, age, role, salary) values ('Richard', 'Hernandez', 43.0, 'teacher', 1300.0);
insert into employee(first_name, last_name, age, role, salary) values ('Susan', 'Lopez', 34.0, 'teacher', 1300.0);
insert into employee(first_name, last_name, age, role, salary) values ('Sarah', 'Wilson', 36.0, 'teacher', 1200.0);
insert into employee(first_name, last_name, age, role, salary) values ('Karen', 'Thomas', 47.0, 'teacher', 1600.0);
insert into employee(first_name, last_name, age, role, salary) values ('Barbara', 'Martinez', 28, 'principle', 1500.0);
insert into employee(first_name, last_name, age, role, salary) values ('Charles', 'Anderson', 44, 'secretary', 1400.0);
insert into employee(first_name, last_name, age, role, salary) values ('Linda', 'Garcia', 60, 'cleaner', 1300.0);


-- newdb


create table student(id integer auto_increment primary key, first_name varchar(40), last_name varchar(40), age integer);


insert into student(first_name, last_name, age) values ('Alan', 'Snappy', 16);
insert into student(first_name, last_name, age) values ('Maria', 'Foster', 17 
);
insert into student(first_name, last_name, age) values ('Michale', 'Robbin', 18
);
insert into student(first_name, last_name, age) values ('Enric', 'Dosio', 15
);
insert into student(first_name, last_name, age) values ('Joseph', 'Dosni', 14
);
insert into student(first_name, last_name, age) values ('Zanifer', 'Emily', 16
);
insert into student(first_name, last_name, age) values ('Kuleswar', 'Sitaraman', 16
);
insert into student(first_name, last_name, age) values ('Henrey', 'Gabriel', 17
);
insert into student(first_name, last_name, age) values ('Alex', 'Manuel', 19
);
insert into student(first_name, last_name, age) values ('George', 'Mardy', 16
);


create table employee(id integer auto_increment primary key, first_name varchar(40), last_name varchar(40), age integer, salary integer);

insert into employee(first_name, last_name, age, salary) values ('John', 'Smith', 56, 1200);
insert into employee(first_name, last_name, age, salary) values ('Patricia', 'Johnson', 54, 1200);
insert into employee(first_name, last_name, age, salary) values ('Robert', 'Williams', 35, 1500);
insert into employee(first_name, last_name, age, salary) values ('William', 'Miller', 41, 1500);
insert into employee(first_name, last_name, age, salary) values ('Elizabeth', 'Davis', 39, 1400);
insert into employee(first_name, last_name, age, salary) values ('Richard', 'Hernandez', 43, 1300);
insert into employee(first_name, last_name, age, salary) values ('Susan', 'Lopez', 34, 1300);
insert into employee(first_name, last_name, age, salary) values ('Sarah', 'Wilson', 36, 1200);
insert into employee(first_name, last_name, age, salary) values ('Karen', 'Thomas', 47, 1600);
insert into employee(first_name, last_name, age, salary) values ('Barbara', 'Martinez', 28, 1500);
insert into employee(first_name, last_name, age, salary) values ('Charles', 'Anderson', 44, 1400);
insert into employee(first_name, last_name, age, salary) values ('Linda', 'Garcia', 60, 1300);



