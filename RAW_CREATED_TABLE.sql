-- CREATE DATABASE  DEV_HEALTHCONNECT_RAW;


-- 1. Create the 'raw_patients' table
CREATE TABLE [DEV_HEALTHCONNECT_RAW].[dbo].[raw_patients] (
    patient_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender CHAR(1),
    date_of_birth DATE,
    state_code CHAR(2),
    city VARCHAR(100),
    phone VARCHAR (10)
);


-- 2. Create the 'raw_providers' table
CREATE TABLE [DEV_HEALTHCONNECT_RAW].[dbo].[raw_providers] (
    provider_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    specialty VARCHAR(50),
    npi bigINT
);

-- 3. Create the 'raw_payers' table
CREATE TABLE [DEV_HEALTHCONNECT_RAW].[dbo].[raw_payers] (
    payer_id INT,
    payer_name VARCHAR(100)
);



-- 4. Create the 'raw_encounters' table
CREATE TABLE [DEV_HEALTHCONNECT_RAW].[dbo].[raw_encounters] (
    encounter_id INT,
    patient_id INT,
    provider_id INT,
    encounter_type VARCHAR(10),
    encounter_start Varchar(500),
    encounter_end Varchar(500),
    height_cm INT,
    weight_kg DECIMAL(5, 2),
    systolic_bp INT,
    diastolic_bp INT
);

-- 5. Create the 'raw_diagnoses' table
CREATE TABLE [DEV_HEALTHCONNECT_RAW].[dbo].raw_diagnoses (
    diagnosis_id INT,
    encounter_id INT,
    diagnosis_description VARCHAR(100),
    is_primary INT
);

-- 6. Create the 'raw_procedures' table
CREATE TABLE [DEV_HEALTHCONNECT_RAW].[dbo].raw_procedures (
    procedure_id INT,
    encounter_id INT,
    procedure_description VARCHAR(100)
);

-- 7. Create the 'raw_medications' table
CREATE TABLE [DEV_HEALTHCONNECT_RAW].[dbo]. raw_medications (
    medication_id INT,
    encounter_id INT,
    drug_name VARCHAR(100),
    route VARCHAR(100),
    dose VARCHAR(100),
    frequency VARCHAR(200),
    days_supply INT
);

-- 8. Create the 'raw_claims' table
CREATE TABLE [DEV_HEALTHCONNECT_RAW].[dbo].raw_claims (
    claim_id INT,
    encounter_id INT,
    payer_id INT,
    admit_date DATE,
    discharge_date DATE,
    total_billed_amount DECIMAL(10, 2),
    total_allowed_amount DECIMAL(10, 2),
    total_paid_amount DECIMAL(10, 2),
    claim_status VARCHAR(20)
);

drop table [dbo].[raw_claims]
drop table [dbo].[raw_diagnosis]
drop table [dbo].[raw_encounter]
drop table [dbo].[raw_medication]
drop table [dbo].[raw_patients]
drop table [dbo].[raw_payers]
drop table [dbo].[raw_procedure]
drop table [dbo].[raw_providers]


