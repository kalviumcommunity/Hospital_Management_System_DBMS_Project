--CREATE COMMONDS:

-- Create the HMS database
CREATE DATABASE HMS;
USE HMS;

-- Create the Patient table
CREATE TABLE Patient (
    Patient_id INT PRIMARY KEY UNIQUE AUTO_iNCREMENT,
    email VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(30) NOT NULL,
    name VARCHAR(50) NOT NULL,
    address VARCHAR(60) NOT NULL,
    gender VARCHAR(20) NOT NULL
);

-- Create the MedicalHistory table
CREATE TABLE MedicalHistory (
    id INT PRIMARY KEY UNIQUE AUTO_iNCREMENT,
    Patient_id INT, -- Foreign key referencing Patient
    date DATE NOT NULL,
    conditions VARCHAR(100) NOT NULL,
    surgeries VARCHAR(100) NOT NULL,
    medication VARCHAR(100) NOT NULL,
    FOREIGN KEY (Patient_id) REFERENCES Patient(Patient_id) ON DELETE CASCADE
);

-- Create the Doctor table
CREATE TABLE Doctor (
    Doctor_id INT PRIMARY KEY UNIQUE AUTO_iNCREMENT,
    email VARCHAR(50) NOT NULL UNIQUE,
    gender VARCHAR(20) NOT NULL,
    password VARCHAR(30) NOT NULL,
    name VARCHAR(50) NOT NULL
);

-- Create the Schedule table
CREATE TABLE Schedule (
    id INT PRIMARY KEY UNIQUE AUTO_iNCREMENT,
    Doctor_id INT NOT NULL, -- Foreign key referencing Doctor
    starttime TIME NOT NULL,
    endtime TIME NOT NULL,
    breaktime TIME NOT NULL,
    day VARCHAR(20) NOT NULL,
    FOREIGN KEY (Doctor_id) REFERENCES Doctor(Doctor_id) ON DELETE CASCADE
);

-- Create the Diagnose table
-- CREATE TABLE Diagnose(
-- appt int NOT NULL,
-- Doctor_id int NOT NULL,
-- diagnosis varchar(40) NOT NULL,
-- prescription varchar(50) NOT NULL,
-- FOREIGN KEY (appt) REFERENCES Appointment (id) ON DELETE CASCADE,
-- FOREIGN KEY ( Doctor_id) REFERENCES Doctor ( Doctor_id) ON DELETE CASCADE,
-- PRIMARY KEY (appt,Doctor_id)
-- );

-- Create the Appointment table
CREATE TABLE Appointment (
    id INT PRIMARY KEY UNIQUE AUTO_iNCREMENT,
    Patient_id INT NOT NULL, -- Foreign key referencing Patient
    Doctor_id INT NOT NULL, -- Foreign key referencing Doctor
    date DATE NOT NULL,
    starttime TIME NOT NULL,
    endtime TIME NOT NULL,
    status VARCHAR(15) NOT NULL,
    concerns VARCHAR(40), -- Patient concerns
    symptoms VARCHAR(40), -- Patient symptoms
    FOREIGN KEY (patient_id) REFERENCES Patient(Patient_id) ON DELETE CASCADE,
    FOREIGN KEY (Doctor_id) REFERENCES Doctor(Doctor_id) ON DELETE CASCADE
);


show tables;

-- ALTER COMMOND :
ALTER TABLE Patient
ADD Phone VARCHAR(15);

-- DROP COMMOND:
DROP TABLE Diagnose;


ALTER TABLE Patient
DROP COLUMN Phone;




