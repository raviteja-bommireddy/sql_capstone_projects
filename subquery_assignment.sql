                                                                        [Subquery] assignment

CREATE TABLE Doctors(Doctor_ID int,Doctor_name varchar(30),Specialty varchar(20),Day_Available varchar(20),Contact_No varchar(13),Experience int);
INSERT INTO Doctors VALUES(1,'Dr.Harsh','Dietician','Monday','9876543210',5);
INSERT INTO Doctors VALUES(2,'Dr.Simran','Cardiologist','Tuesday','995671866',6);
INSERT INTO Doctors VALUES(3,'Dr.Abhishek','Gynecologist','Monday','8756128765',4);
INSERT INTO Doctors VALUES(4,'Dr.Tanuja','Dietician','Tuesday','9875617286',2);
INSERT INTO Doctors VALUES(1,'Dr.Vedant','Cardiologist','Monday','678195278',10);
INSERT INTO Doctors VALUES(5,'Dr.Sanika','Gynecologist','Monday','9876524516',2);
INSERT INTO Doctors VALUES(6,'Dr.Nitish','Neurologist','Saturday','7651862542',4);
INSERT INTO Doctors VALUES(7,'Dr.Sanskriti','Dietician','Tuesday','9876545678',5);
INSERT INTO Doctors VALUES(8,'Dr.Pranali','Gynecologist','Monday','7689018765',6);
INSERT INTO Doctors VALUES(9,'Dr.Paavana','Dietician','Sunday','6789156278',10);
INSERT INTO Doctors VALUES(10,'Dr.Devang','Cardiologist','Monday','18976254187',10);
INSERT INTO Doctors VALUES(11,'Dr.Rutuja','Dietician','Wednesday','18726578976',5);
INSERT INTO Doctors VALUES(12,'Dr.Gayatri','Neurologist','Sunday','98735678176',6);
INSERT INTO Doctors VALUES(13,'Dr.Amar','Dietician','Thursday','7890876543',5);
INSERT INTO Doctors VALUES(14,'Dr.Aditya','Cardiologist','Friday','6789098765',4);
INSERT INTO Doctors VALUES(15,'Dr.Salil','Dietician','Tuesday','9872456789',2);
INSERT INTO Doctors VALUES(16,'Dr.Prajwal','Gynecologist','Saturday','9865435671',6);
INSERT INTO Doctors VALUES(17,'Dr.Sami','Cardiologist','Friday','9876543245',5);
INSERT INTO Doctors VALUES(18,'Dr.Sakshi','Neurologist','Wednesday','9876547892',5);
INSERT INTO Doctors VALUES(19,'Dr.Aadinath','Gynecologist','Thursday','9875672897',10);
CREATE TABLE Patients(Patient_ID int,Patient_name varchar(20),Doctor_name varchar(30),Treatment_date varchar(10),Ward_no int,Condition varchar(20),Fees int);
INSERT INTO Patients VALUES(1,'shruti','Dr.Simran','01-02-22',1,'Good',200);
INSERT INTO Patients VALUES(2,'rahul','Dr.Simran','01-02-22',1,'Good',200);
INSERT INTO Patients VALUES(3,'rohit','Dr.Abhishek','01-02-22',2,'Intermediate',400);
INSERT INTO Patients VALUES(4,'raj','Dr.Tanuja','01-02-22',3,'Good',200);
INSERT INTO Patients VALUES(5,'roshan','Dr.Simran','01-02-22',1,'Intermediate',200);
INSERT INTO Patients VALUES(6,'nupur','Dr.Harsh','02-02-22',1,'Bad',100);
INSERT INTO Patients VALUES(7,'sahil','Dr.Abhishek','02-02-22',2,'Better',600);
INSERT INTO Patients VALUES(8,'shreya','Dr.Vedant','02-02-22',5,'Good',200);
INSERT INTO Patients VALUES(9,'tanvi','Dr.Tanuja','03-02-22',3,'Bad',500);
INSERT INTO Patients VALUES(10,'dipti','Dr.Simran','03-02-22',1,'Intermediate',400);
INSERT INTO Patients VALUES(11,'snehal','Dr.Abhishek','03-02-22',2,'Better',100);
INSERT INTO Patients VALUES(12,'abhijit','Dr.Simran','04-02-22',1,'Good',200);
INSERT INTO Patients VALUES(13,'anam','Dr.Vedant','04-02-22',5,'Bad',500);
INSERT INTO Patients VALUES(14,'sanyukta','Dr.Simran','04-02-22',1,'Intermediate',500);
INSERT INTO Patients VALUES(15,'smruti','Dr.Simran','01-03-22',1,'Good',600);
INSERT INTO Patients VALUES(16,'siddhesh','Dr.Abhishek','01-03-22',2,'Good',200);
INSERT INTO Patients VALUES(17,'krutik', 'Dr.Vedant','01-03-22',5,'Bad',500);
INSERT INTO Patients VALUES(18,'jay','Dr.Tanuja','02-03-22',3,'Good',500);
INSERT INTO Patients VALUES(19,'jayant','Dr.Simran','02-03-22',1,'Intermediate',200);
INSERT INTO Patients VALUES(20,'vineet','Dr.Vedant','01-04-22',5,'Better',400);
INSERT INTO Patients VALUES(21,'riddhi','Dr.Abhishek','01-04-22',2,'Bad',200);
INSERT INTO Patients VALUES(22,'vishaka','Dr.Harsh','02-05-22',4,'Good',100);
INSERT INTO Patients VALUES(23,'sarthak','Dr.Simran','02-05-22',1,'Good',400);
INSERT INTO Patients VALUES(24,'yash','Dr.Vedant','02-04-22',5,'Better',500);
INSERT INTO Patients VALUES(25,'suraj','Dr.Sanika','04-05-22',6,'Good',200);

CREATE TABLE Timetable(Day varchar(20),Doctor_name varchar(20),Ward_no int,Time varchar(20));
INSERT INTO Timetable VALUES('Monday','Dr.Harsh',4,'10am');
INSERT INTO Timetable VALUES('Tuesday','Dr.Simran',1,'10am');
INSERT INTO Timetable VALUES('Wednesday','Dr.Rutuja',7,'11am');
INSERT INTO Timetable VALUES('Thursday','Dr.Amar',8,'1pm');
INSERT INTO Timetable VALUES('Friday','Dr.Aditya',9,'3pm');
INSERT INTO Timetable VALUES('Saturday','Dr.Prajwal',10,'11am');
INSERT INTO Timetable VALUES('Sunday','Dr.Paavana',11,'4pm');
INSERT INTO Timetable VALUES('Monday','Dr.Sanika',6,'10am');
INSERT INTO Timetable VALUES('Tuesday','Dr.Tanuja',3,'4am');
INSERT INTO Timetable VALUES('Wednesday','Dr.Sakshi',12,'10pm');
INSERT INTO Timetable VALUES('Thursday','Dr.Aadinath',13,'8am');

CREATE TABLE Ward(Ward_no int,Floor int,Beds int,Nurses int);
INSERT INTO Ward VALUES(1,1,10,3);
INSERT INTO Ward VALUES(2,1,12,4);
INSERT INTO Ward VALUES(3,1,13,3);
INSERT INTO Ward VALUES(4,1,10,3);
INSERT INTO Ward VALUES(5,2,9,2);
INSERT INTO Ward VALUES(6,2,8,3);
INSERT INTO Ward VALUES(7,2,10,4);
INSERT INTO Ward VALUES(8,2,9,3);
INSERT INTO Ward VALUES(9,3,13,2);
INSERT INTO Ward VALUES(10,3,10,3);
INSERT INTO Ward VALUES(11,3,13,2);
INSERT INTO Ward VALUES(12,4,10,3);
INSERT INTO Ward VALUES(13,4,9,4);

CREATE TABLE Medicines(Date varchar(10),Doctor_name varchar(30),Ward_no int,Injections int,Medicines int);
INSERT INTO Medicines VALUES('01-02-22','Dr.Simran',1,20,40);
INSERT INTO Medicines VALUES('01-02-22','Dr.Harsh',4,30,50);
INSERT INTO Medicines VALUES('01-02-22','Dr.Vedant',5,10,30);
INSERT INTO Medicines VALUES('02-02-22','Dr.Abhishek',2,20,40);
INSERT INTO Medicines VALUES('02-02-22','Dr.Tanuja',3,40,60);
INSERT INTO Medicines VALUES('02-02-22','Dr.Sanika',6,10,35);
INSERT INTO Medicines VALUES('02-02-22','Dr.Rutuja',7,34,67);
INSERT INTO Medicines VALUES('03-02-22','Dr.Simran',1,20,40);
INSERT INTO Medicines VALUES('03-02-22','Dr.Harsh',4,15,43);
INSERT INTO Medicines VALUES('03-02-22','Dr.Simran',1,20,40);
INSERT INTO Medicines VALUES('01-03-22','Dr.Vedant',5,12,24);
INSERT INTO Medicines VALUES('01-03-22','Dr.Simran',1,23,34);
INSERT INTO Medicines VALUES('01-03-22','Dr.Abhishek',2,33,45);
INSERT INTO Medicines VALUES('02-03-22','Dr.Harsh',4,22,43);
INSERT INTO Medicines VALUES('02-03-22','Dr.Simran',1,20,40);
INSERT INTO Medicines VALUES('01-04-22','Dr.Vedant',5,20,40);
INSERT INTO Medicines VALUES('01-04-22','Dr.Tanuja',3,22,45);

drop table doctors;
select *from doctors;
select *from patients;
select *from timetable;
select *from ward;
select *from medicines;

-- question number 1
---Q1. Display patient names recommending Dr.Simran.
select patient_name from patients	where doctor_name ='dr.simran'

-- question number 2
---Q2. Display number of patients treated by the same doctor and in the same ward.
select count(patient_name) as 'number of patients',doctor_name,ward_no from patients	 group by doctor_name,ward_no;

-- question number 3
---Q3. Display the average fees taken by each Doctor.
select doctor_name, AVG(fees) as 'average fees' from patients group by doctor_name;
--try with using distinct functions and if not get know why ?
select  distinct doctor_name, AVG(fees) as 'average fees' from patients;

-- question number 4 *** (i still doubt with this question)
---Q4. Which specialist has used the maximum number of injections on date ‘01-02-22’?
select (select specialty injections as 'maximum injection' from medicines where date='01-02-22';
--cloudyML solution
select doctors.specialty,MAX(medicines.Injections) as 'maximum injections'from doctors,medicines where doctors.doctor_name=medicines.doctor_name and medicines.date='01-02-22' group by medicines.Injections,doctors.specialty;

-- question number 5
---Q5. How many nurses were present on Wednesday with Dr.Rutuja?
select ward.nurses,timetable.Doctor_name from ward,timetable where ward.Ward_no=timetable.Ward_no and timetable.day='wednesday' and Timetable.Doctor_name='Dr.Rutuja';
---cloudyml solution
select ward.nurses,timetable.Doctor_name from ward,timetable where ward.Ward_no=timetable.Ward_no and timetable.day='wednesday' and timetable.Doctor_name in (select Doctor_name from timetable where Doctor_name='Dr.Rutuja');

-- question number 6
Q6. At what time is Dr.Rutuja available on Wednesday?
select Doctor_name, time FROM  timetable WHERE Doctor_name='Dr.Rutuja' and  DAY='wednesday';

-- question number 7
---Q7. Count of patients with good condition treated by each doctor?
select Doctor_name, count(condition) as 'number of patients in good condition' from patients where Condition='good' group by Doctor_name;

-- question number 8
---Q8. Wards on which floor has used the minimum number of medicines on date ‘02-02-22’?
select ward.Floor, min(medicines.Medicines) as Medicines from ward,medicines where ward.ward_no=medicines.Ward_no and date='02-02-22';
--- cloudML solution
select ward.Floor, medicines.Medicines as Medicines from ward,medicines where ward.ward_no=medicines.Ward_no and Medicines.Medicines IN (select min(medicines) from medicines where date='02-02-22');

-- question number 9
---Q9. Display ward no. having minimum number of beds.
select ward_no, min(beds) from ward   limit 1;  -- why not working
--cloudyML solution
select ward_no, beds from ward where beds  in (select min(beds) from ward);

-- question number 10
---Q10. Display total experience of doctors with specialty as ‘Cardiologist’. 
select specialty, sum(experience) as 'total experience' from doctors where specialty='cardiologist' group by specialty;

-- question number 11
---Q11. Display Doctor names and their corresponding floors.
select timetable.doctor_name,ward.Floor from timetable,ward where  timetable.Ward_no=ward.ward_no ;
---cloudyML solution
select doctor_name,floor from timetable inner join ward on timetable.ward_no=ward.Ward_no;

-- question number 12
---Q12. Display average Number of beds on each floor.
select floor,avg(beds) as 'average number of beds' from Ward group by Floor;

-- question number 13
---Q13. Display Doctor names and their ward numbers from Patients and Timetable.
select doctor_name,ward_no from patients union select doctor_name,ward_no from timetable;

-- question number 14
---Q14. Display count of patients treated on each day.
select  treatment_date, count(patient_name) from Patients group by treatment_date;

-- question number 15
---Q15. Display count of patients from each condition type.
select  Condition, count(patient_name) as 'number of patients' from Patients group by Condition;

-- question number 16 ***
---Q16. Display the total number of injections and medicines used by each doctor for doctor having doctor id greater than 3?
--completely unique question ---cloudyML solution 
select doctor_name,COUNT(injections)+count(medicines) as 'total injections and medicines' FROM Medicines where doctor_name in (select doctor_name from doctors where doctor_ID>3) group by doctor_name;

-- question number 17
---Q17. Display the medicines consumed on each day starting from most to least.
select date, sum(medicines) from Medicines group by date order by sum(medicines) desc;

-- question number 18
---Q18. Which ward has treated the most number of patients who went in good condition?
select ward_no, sum(condition) as 'number of good condition patients' from patients group by condition ; 
---cloudML solution
select ward_no,count(condition) as 'number of good condition patients'from patients where condition='good' group by ward_no order by count(condition) DESC;

-- question number 19
---Q19. Give the doctor specialities available at 10am. 
select doctors.specialty, timetable.Time from doctors,timetable where doctors.doctor_name=timetable.Doctor_name and timetable.time='10am';

-- question number 20
---Q20. Display the number of nurses using more than 20 injections in each ward.
select ward_no,nurses from ward union select ward_no,injections from medicines where injections>20;    --find what is mistake here
select ward.ward_no, ward.nurses, medicines.injections from ward,medicines where ward.ward_no=medicines.ward_no and medicines.Injections >20

-- question number 21
---Q21. Display number of patients treated by doctors having more than 3 years of experience in each ward.
-- why that group by patients.ward_no,doctors.experience is required ????????????
select Patients.Ward_no,count(patients.Patient_name),Doctors.experience from Doctors,patients where patients.Doctor_name=Doctors.Doctor_name and Doctors.experience>3 GROUP BY Patients.ward_no,doctors.experience; 

-- question number 22
---Q22. Display the contact nos. each patient should contact in case of further assistance.
SELECT  Patients.patient_name, Doctors.contact_No from patients,doctors where patients.Doctor_name=doctors.doctor_name;  ---why its not working know it
---cloudyML solution
SELECT  Patients.patient_name, Doctors.Contact_No from Doctors inner join Patients on doctors.doctor_name=patients.Doctor_name;

-- question number 23
---Q23. How many doctors are available at each time of the day?
select time, count(doctor_name) from Timetable group by time;

-- question number 24
---Q24. Display Doctor_ID and names treating patients having 's' as their initial.
select doctors.Doctor_ID,doctors.doctor_name,patients.Patient_name from Patients,doctors where doctors.doctor_name=Patients.doctor_name and patients.Patient_name  like 's%';

-- question number 25 ***
---Q25. Which doctor can see a patient if Dr. Simran is not available?
---cloudyML solution
select day,doctor_name from Timetable where not Doctor_name='DR.simran' and day in(select day from Timetable where doctor_name='Dr.simran');

