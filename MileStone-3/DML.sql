--DML COMMANDS: 

-- Inaerting data in Patient table
INSERT INTO Patient(Patient_id,email,password,name,address,gender)
VALUES
('1','ramesh@gmail.com','hrishikesh13','Ramesh','Tamil Nadu', 'male'),
('2','suresh@gmail.com','hrishikesh13','Suresh','Karnataka', 'male'),
('3','rakesh@gmail.com','hrishikesh13','Rakesh','Gujarat', 'male');


-- Inaerting data in MedicalHistory table
INSERT INTO MedicalHistory(id,date, Patient_id,conditions,surgeries,medication)
VALUES
(1,'19-01-14','1','Pain in abdomen','Heart Surgery','Crocin'),
(2,'19-01-14','2','Frequent Indigestion','none','none'),
(3,'19-01-14','3','Body Pain','none','Iodex')
;


-- Inaerting data in Doctor table
INSERT INTO Doctor(Doctor_id,email, gender, password, name)
VALUES
('1','Satwika@gmail.com', 'female', 'Satwika16', 'k.Satwika Patel'),
('2','Pramod@gmail.com', 'male', 'pramod69', 'Pramod Atlee'),
('3','Akshith@gmail.com', 'male', 'Akshith59', 'Akshith kumar')
;


-- Inaerting data in Schedule table
INSERT INTO Schedule(id, Doctor_id,starttime,endtime,breaktime,day)
VALUES
(1,'1','09:00','17:00','12:00','Tuesday'),
(2,'1','09:00','17:00','12:00','Friday'),
(3,'1','09:00','17:00','12:00','Saturday'),
(4,'1','09:00','17:00','12:00','Sunday'),
(5,'2','09:00','17:00','12:00','Wednesday'),
(6,'3','09:00','17:00','12:00','Friday')
;


-- Inaerting data in Appointment table
INSERT INTO Appointment(id,Patient_id, Doctor_id,date,starttime,endtime,status,concerns,symptoms)
VALUES
(1,1,1,'19-01-15', '09:00', '10:00', 'Done','Headache','N/A'),
(2,2,2,'19-01-16', '10:00', '11:00', 'Done','Fever','N/A'),
(3,3,3,'19-01-18', '14:00', '15:00', 'Done','Cough','N/A')
;

show tables;

select * FROM Patient;
select * from MedicalHistory;
select * from doctor;
select * from schedule;
select * from appointment;

UPDATE Appointment
SET status = 'unDone', concerns = 'Cancer', symptoms = 'Blood Vomitings'
WHERE id = 1;


DELETE FROM Patient
WHERE Patient_id = 3;



