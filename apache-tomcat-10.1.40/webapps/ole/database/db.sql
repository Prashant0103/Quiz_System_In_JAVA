create database mcqdb;
use mcqdb;

create table usermaster(
    emailid varchar(30) primary key,
    name varchar(30),
    contactno varchar(10),
    gender varchar(6),
    pwd varchar(10));


insert into usermaster(emailid,pwd) values('mcq@admin','super');   


create table test(
 testid integer primary key auto_increment,
 testname varchar(50),
 subject varchar(10),
 qcount integer,
 duration integer
);

create table result(
resultid integer primary key auto_increment,
emailid varchar(30),
testid integer,
score integer
);


create table qbank(
    qid integer primary key auto_increment,
    subject varchar(200),
    question varchar(200),
    option1 varchar(200),
    option2 varchar(200),
    option3 varchar(200),
    option4 varchar(200),
    ans integer
);

insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java',' Which of the following can be operands of arithmetic operators?','Numeric','Boolean','Characters','Both Numeric & Characters',4);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java',' Modulus operator, %, can be applied to which of these?','Integers','Floating – point numbers',' Both Integers and floating – point numbers','None of the mentioned',3);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java','Decrement operator, --, decreases the value of variable by what number?','1','2','3','4',1);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java','What is the output of relational operators?','Integer','Boolean','Characters','Double',2);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java','Which of these is returned by “greater than”, “less than” and “equal to” operators?','Integers','Floating – point numbers','Boolean','None of the mentioned',3);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java','Which of these operators can skip evaluating right hand operand?',' !',' |','&',' &&',4);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java',' Which of these statements is correct?',' true and false are numeric values 1 and 0','true and false are numeric values 0 and 1','true is any non zero value and false is 0',' true and false are non numeric values',4);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java','Which of these is not a bitwise operator?','&',' &=','|=','<=',4);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java','On applying Left shift operator, <<, on integer bits are lost one they are shifted past which position bit?','1','32','33','31',4);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java','Which right shift operator preserves the sign of the value?',' <<',' <<','<<=',' >>=',2);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java',' Which of these statements are incorrect?','The left shift operator, <<, shifts all of the bits in a value to the left specified number of times','The right shift operator, >>, shifts all of the bits in a value to the right specified number of times','The left shift operator can be used as an alternative to multiplying by 2','The right shift operator automatically fills the higher order bits with 0',4);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java','Which of these have highest precedence?',' ()',' ++',' *','>>',1);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java','1. Which of these is long data type literal?',' 0x99fffL','ABCDEFG','0x99fffa',' 99671246',1);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java',' Which of these can be returned by the operator &?','','4 bytes','8 bytes','compiler dependent',2);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java',' Literals in java must be appended by which of these?','Integer','Boolean','Character','Integer or Boolean',4);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java','Size of int is','L','l','D','L and I',4);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java',' Literal can be of which of these data types?','integer','float','boolean','all of the mentioned',4);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java','Which of these can not be used for a variable name in Java?','identifier','keyword',' identifier & keyword',' none of the mentioned',2);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java',' Generics does not work with?','2','4','8 ','c',2);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java','Size of int is','Set','List','Tree','Array',4);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java','How to sort an array?',' Array.sort()',' Arrays.sort()',' Collection.sort()','System.sort()',2);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java','How to copy contents of array?','2','4','8 ','c',2);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java','Size of int is','System.arrayCopy()','Array.copy()','Arrays.copy()','Collection.copy()',1);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java',' Where is an array stored in memory?','2','4','8 ','c',2);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java','Size of int is','heap space','stack space','heap space and stack space','first generation memory',1);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java','An array elements are always stored in ________ memory locations.','Sequential','Random','Sequential and Random',' Binary search',1);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java','Which of these selection statements test only for equality?',' if','switch','if & switch','none of the mentioned',2);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java','Which of these are selection statements in Java?','2','4','8 ','c',2);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java','Size of int is',' if()','for()','continue','break',1);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java','Which of the following loops will execute the body of loop even when condition controlling the loop is initially false?',' do-while','while','for','none of the mentioned',1);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java','Which of these jump statements can skip processing the remainder of the code in its body for a particular iteration?','break','return','exit','continue',4);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java',' Which of this statement is incorrect?','switch statement is more efficient than a set of nested ifs','two case constants in the same switch can have identical values',' switch statement can only test for equality, whereas if statement can evaluate any type of boolean expression',' it is possible to create a nested switch statements',2);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java',' What is true about a break?','Break stops the execution of entire program','Break halts the execution and forces the control out of the loop','Break forces the control out of the loop and starts the execution of next iteration',' Break halts the execution of the loop for certain time frame',2);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java','. What is true about do statement?','2','4','8 ','c',2);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java','Size of int is','do statement executes the code of a loop at least once','do statement does not get execute if condition is not matched in the first iteration','do statement checks the condition at the beginning of the loop','do statement executes the code more than once always',1);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java','Which of the following is used with the switch statement?','Continue','Exit','break','do',3);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java','Which of the following is not a decision making statement?','2','4','8 ','c',2);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java','Size of int is','if','if-else','switch','do-while',4);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java','Which of the following is not a valid jump statement?','2','4','8 ','c',2);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java','Size of int is','break','goto','continue','return',2);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java',' From where break statement causes an exit?',' Only from innermost loop','Terminates a program',' Only from innermost switch','From innermost loops or switches',4);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java','Which of the following is not a valid flow control statement?','exit()','break','continue','return',1);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java','Which of the following is not OOPS concept in Java?','2','4','8 ','c',2);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java','Size of int is','Inheritance','Encapsulation','Polymorphism','Compilation',4);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java',' Which of the following is a type of polymorphism in Java?','2','4','8 ','c',2);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java','Size of int is','Compile time polymorphism','Execution time polymorphism','Multiple polymorphism','Multilevel polymorphism',1);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java',' When does method overloading is determined?','2','4','8 ','c',2);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java','Size of int is','At run time','At compile time','At coding time','At execution time',2);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java','When Overloading does not occur?',' More than one method with same name but different method signature and different number or type of parameters','More than one method with same name, same signature but different number of signature','More than one method with same name, same signature, same number of parameters but different type','More than one method with same name, same number of parameters and type but different signature',4);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java','Which concept of Java is a way of converting real world objects in terms of class?','Polymorphism','Encapsulation','Abstraction','Inheritance',3);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java','Which concept of Java is achieved by combining methods and attribute into a class?','Encapsulation','Inheritance','Polymorphism','Abstraction',1);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java','What is it called if an object has its own lifecycle and there is no owner?','Aggregation','Composition','Encapsulation','Association',4);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java',' What is it called where child object gets killed if parent object is killed?','Aggregation','Composition','Encapsulation','Association',2);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java','What is it called where object has its own lifecycle and child object cannot belong to another parent object?','Aggregation','Composition','Encapsulation','Association',1);
insert into qbank(subject,question,option1,option2,option3,option4,ans) values('Java','Size of int is','2','4','8 ','c',2);

