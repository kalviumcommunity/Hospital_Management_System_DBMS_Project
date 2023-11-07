--Granting the privileges to the created roles:

GRANT ALL PRIVILEGES ON HMS.* TO Admin;

-- Assign specific privileges to DoctorManager role
GRANT SELECT, INSERT, UPDATE, DELETE ON HMS.Patient TO DoctorManager;
GRANT SELECT, INSERT, UPDATE, DELETE ON HMS.Appointment TO DoctorManager;

-- Assign specific privileges to NurseManager role
GRANT SELECT, INSERT, UPDATE, DELETE ON HMS.MedicalHistory TO NurseManager;
GRANT SELECT, INSERT, UPDATE ON HMS.Appointment TO NurseManager;

-- Assign specific privileges to Receptionist role
GRANT SELECT, INSERT, UPDATE, DELETE ON HMS.Patient TO Receptionist;
GRANT SELECT, INSERT, UPDATE, DELETE ON HMS.Appointment TO Receptionist;

-- Revoking the specific perivilage of Patient from Receptionist
REVOKE UPDATE ON HMS.Patient FROM Receptionist;

-- Revoking the specific perivilage of Appointment from DoctorManger
REVOKE DELETE ON HMS.Appointment FROM DoctorManager;

-- Revoking the specific perivilage of MedicalHistory from NurseManager
REVOKE SELECT ON HMS.MedicalHistory FROM NurseManager;