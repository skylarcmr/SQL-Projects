CREATE TABLE patient (
	id SERIAL NOT NULL, 
	firstname VARCHAR(200) NOT NULL,
	lastname VARCHAR(200) NOT NULL,
	DOB DATE,
	CONSTRAINT pk_patient PRIMARY KEY(id));
CREATE TABLE clinic (
	id SERIAL NOT NULL,
	name VARCHAR(200) NOT NULL,
	address VARCHAR(200) NOT NULL,
	CONSTRAINT pk_clinic PRIMARY KEY(id));
CREATE TABLE doctor (
	id SERIAL NOT NULL,
	firstname VARCHAR(200) NOT NULL,
	lastname VARCHAR(200) NOT NULL,
	CONSTRAINT pk_doctor PRIMARY KEY(id));
CREATE TABLE appointment(
	patient_id SERIAL NOT NULL,
	doctor_id SERIAL NOT NULL,
	clinic_id SERIAL NOT NULL,
	appointment_id SERIAL NOT NULL,
	appointment_date DATE NOT NULL,
	appointment_time TIME NOT NULL,
	doctor VARCHAR(400) NOT NULL,
	patient VARCHAR(400) NOT NULL,
	arrival_time TIME,
	completed_time TIME,
	CONSTRAINT pk_appointment PRIMARY KEY(appointment_id),
	CONSTRAINT fk_pai_paiid FOREIGN KEY(patient_id) REFERENCES patient(id),
	CONSTRAINT fk_cli_cliid FOREIGN KEY(clinic_id) REFERENCES clinic(id),
	CONSTRAINT fk_doc_docid FOREIGN KEY(doctor_id) REFERENCES doctor(id)
);

INSERT INTO patient (firstname, lastname,DOB) 
	VALUES('Jane','Doe','1998-03-24');
INSERT INTO patient (firstname, lastname,DOB) 
	VALUES( 'John','Blick', '1988-02-29');
INSERT INTO patient (firstname, lastname,DOB) 
	VALUES( 'Karen', 'Smith', '1987-05-19');
INSERT INTO clinic (name, address)
	VALUES( 'Thomas Clinc','808 Waverly St');
INSERT INTO clinic (name, address)
	VALUES( 'Fields Clinc','29 Marshell Ave');
INSERT INTO clinic (name, address)
	VALUES( 'Truth Clinc','55 Green Ave');
	
SELECT * FROM patient