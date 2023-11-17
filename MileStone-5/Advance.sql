
-- Joins queries types:

-- INNER JOIN :
SELECT Patient.Patient_id, Patient.name AS PatientName, MedicalHistory.conditions
FROM Patient
INNER JOIN MedicalHistory ON Patient.Patient_id = MedicalHistory.Patient_id
WHERE Patient.Patient_id=2; 

-- LEFT JOIN :
SELECT Patient.Patient_id, Patient.name AS PatientName, MedicalHistory.conditions,MedicalHistory.surgeries
FROM Patient
LEFT JOIN MedicalHistory ON Patient.Patient_id = MedicalHistory.Patient_id;

-- RIGHT JOIN :
SELECT Patient.Patient_id, Patient.name AS PatientName, MedicalHistory.conditions
FROM Patient
RIGHT JOIN MedicalHistory ON Patient.Patient_id = MedicalHistory.Patient_id;

-- FULL JOIN :
SELECT Patient.Patient_id, Patient.name AS PatientName, MedicalHistory.conditions
FROM Patient
FULL JOIN MedicalHistory ON Patient.Patient_id = MedicalHistory.Patient_id;
-- WHERE Patient.Patient_id=2; 


-- Subqueries :
SELECT Doctor.Doctor_id, Doctor.name AS DoctorName
FROM Doctor
WHERE Doctor.Doctor_id NOT IN (
    SELECT DISTINCT Doctor_id
    FROM Appointment
);

SELECT Patient.Patient_id, Patient.name AS PatientName, Doctor.name AS DoctorName
FROM Patient
JOIN Appointment ON Patient.Patient_id = Appointment.Patient_id
JOIN Doctor ON Appointment.Doctor_id = Doctor.Doctor_id;