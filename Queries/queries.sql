postgres-> \connect shashank
Password:
psql (15.0 (Debian 15.0-1.pgdg110+1), server 14.4)
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, compression: off)
You are now connected to database "shashank" as user "postgres".
shashank-> create Table Student(id serial primary key, name varchar(30), age int not null);
ERROR:  syntax error at or near "create"
LINE 3: create Table Student(id serial primary key, name varchar(30)...
        ^
shashank=> create table Student(id serial primary key, name varchar(30), age int not null);
CREATE TABLE
shashank=> INSERT INTO Student(name , age) values ('shashank',25)
shashank-> ;
INSERT 0 1
shashank=> INSERT INTO Student(name,age) values ('Pranav',25);
INSERT 0 1
shashank=> Select * from Student;
 id |   name   | age
----+----------+-----
  1 | shashank |  25
  2 | Pranav   |  25
(2 rows)

shashank=> UPDATE Student SET name = 'kishan' WHERE id=1;                                                                                                        
UPDATE 1
shashank=> Select * from Student;                                                                                                                                
 id |  name  | age
----+--------+-----
  2 | Pranav |  25
  1 | kishan |  25
(2 rows)

shashank=> DELETE from Student where name = 'Pranav';
DELETE 1
shashank=> Select * from Student;                                                                                                                                
 id |  name  | age
----+--------+-----
  1 | kishan |  25
(1 row)
