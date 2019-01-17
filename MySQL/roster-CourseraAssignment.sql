create table table_name (
	field_name datatype [constraint], field_name2 datatype [constraint],constraint
);


insert into table_name values(
	value1,value2,value2;
)

insert into table_name
	(name,Registration,GPA)values(value1,value2,value3);

Select field.name1,field.name2.... from table_name; /* to display all fields*/
-- Display all fields
Select from * table_name;

-- Drop
Drop table student;

--Check Constraints
Create table student(CGPA int check(CGPA>7));

-- FILE WORK: 
DROP TABLE IF EXISTS Member;
DROP TABLE IF EXISTS `User`;
DROP TABLE IF EXISTS Course;

CREATE TABLE `User` (
    user_id     INTEGER NOT NULL AUTO_INCREMENT,
    name        VARCHAR(128) UNIQUE,
    PRIMARY KEY(user_id)
) ENGINE=InnoDB CHARACTER SET=utf8;

CREATE TABLE Course (
    course_id     INTEGER NOT NULL AUTO_INCREMENT,
    title         VARCHAR(128) UNIQUE,
    PRIMARY KEY(course_id)
) ENGINE=InnoDB CHARACTER SET=utf8;

CREATE TABLE Member (
    user_id       INTEGER,
    course_id     INTEGER,
    role          INTEGER,

    CONSTRAINT FOREIGN KEY (user_id) REFERENCES `User` (user_id)
      ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT FOREIGN KEY (course_id) REFERENCES Course (course_id)
       ON DELETE CASCADE ON UPDATE CASCADE,

    PRIMARY KEY (user_id, course_id)
) ENGINE=InnoDB CHARACTER SET=utf8;

INSERT into User(User.name) VALUES ('Sebastien');
INSERT into User(User.name) VALUES ('Briony');
INSERT into User(User.name) VALUES ('Madeeha');
INSERT into User(User.name) VALUES ('Madelyn');
INSERT into User(User.name) VALUES ('Mei');
INSERT into User(User.name) VALUES ('Apryl');
INSERT into User(User.name) VALUES ('Hugh');
INSERT into User(User.name) VALUES ('Karam');
INSERT into User(User.name) VALUES ('Meghan');
INSERT into User(User.name) VALUES ('Sarka');
INSERT into User(User.name) VALUES ('Shania');
INSERT into User(User.name) VALUES ('Azim');
INSERT into User(User.name) VALUES ('Celia');
INSERT into User(User.name) VALUES ('Ezekiel');
INSERT into User(User.name) VALUES ('Unity');

INSERT into Course(Course.title)VALUES('si106');
INSERT into Course(Course.title)VALUES('si110');
INSERT into Course(Course.title)VALUES('si206');

INSERT INTO Member(Member.user_id,Member.course_id,Member.role) VALUES (1, 1, 1);
INSERT INTO Member(Member.user_id,Member.course_id,Member.role) VALUES (2, 1, 0);
INSERT INTO Member(Member.user_id,Member.course_id,Member.role) VALUES (3, 1, 0);
INSERT INTO Member(Member.user_id,Member.course_id,Member.role) VALUES (4, 1, 0);
INSERT INTO Member(Member.user_id,Member.course_id,Member.role) VALUES (5, 1, 0);
INSERT INTO Member(Member.user_id,Member.course_id,Member.role) VALUES (6, 2, 1);
INSERT INTO Member(Member.user_id,Member.course_id,Member.role) VALUES (7, 2, 0);
INSERT INTO Member(Member.user_id,Member.course_id,Member.role) VALUES (8, 2, 0);
INSERT INTO Member(Member.user_id,Member.course_id,Member.role) VALUES (9, 2, 0);
INSERT INTO Member(Member.user_id,Member.course_id,Member.role) VALUES (10, 2,0);
INSERT INTO Member(Member.user_id,Member.course_id,Member.role) VALUES (11, 3,1);
INSERT INTO Member(Member.user_id,Member.course_id,Member.role) VALUES (12, 3,0);
INSERT INTO Member(Member.user_id,Member.course_id,Member.role) VALUES (13, 3,0);
INSERT INTO Member(Member.user_id,Member.course_id,Member.role) VALUES (14, 3,0);
INSERT INTO Member(Member.user_id,Member.course_id,Member.role) VALUES (15, 3,0);



INSERT into User(User.name,Course.title,Member.role) VALUES (Sebastien, si106, 1);
INSERT into User(User.name,Course.title,Member.role) VALUES (Briony, si106, 0);
INSERT into User(User.name,Course.title,Member.role) VALUES (Madeeha, si106, 0);
INSERT into User(User.name,Course.title,Member.role) VALUES (Madelyn, si106, 0);
INSERT into User(User.name,Course.title,Member.role) VALUES (Mei, si106, 0);
INSERT into User(User.name,Course.title,Member.role) VALUES (Apryl, si110, 1);
INSERT into User(User.name,Course.title,Member.role) VALUES (Hugh, si110, 0);
INSERT into User(User.name,Course.title,Member.role) VALUES (Karam, si110, 0);
INSERT into User(User.name,Course.title,Member.role) VALUES (Meghan, si110, 0);
INSERT into User(User.name,Course.title,Member.role) VALUES (Sarka, si110, 0);
INSERT into User(User.name,Course.title,Member.role) VALUES (Shania, si206, 1);
INSERT into User(User.name,Course.title,Member.role) VALUES (Azim, si206, 0);
INSERT into User(User.name,Course.title,Member.role) VALUES (Celia, si206, 0);
INSERT into User(User.name,Course.title,Member.role) VALUES (Ezekiel, si206, 0);
INSERT into User(User.name,Course.title,Member.role) VALUES (Ezekiel, si206, 0);
