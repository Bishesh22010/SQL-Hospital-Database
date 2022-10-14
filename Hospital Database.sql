CREATE TABLE DOCTOR
(DOID VARCHAR2(4) PRIMARY KEY,
DNAME VARCHAR2(30) NOT NULL,
DCITY VARCHAR2(20),
SPEC VARCHAR2(10),
PHONENO INTEGER UNIQUE
)

DESC DOCTOR
SELECT * FROM DOCTOR

insert INTO DOCTOR VALUES
('PD01','DEEPAK PATEL','ANAND','ENT',9998887777)
INSERT INTO DOCTOR VALUES
('D02','JINAL SHAH','NADIAD','EYE',9988999766)
INSERT INTO DOCTOR VALUES
('D03','PARTH DESAI','NADIAD','DENTAL',8766544321)
INSERT INTO DOCTOR VALUES
('D04','RAJ JOSHI','ANAND','ORTHO',7896544321)
INSERT INTO DOCTOR VALUES
('D05','MANSI BHATT','BARODA','DENTAL',8899776666)
INSERT INTO DOCTOR VALUES
('D06','MEGHA VYAS','BARODA','ENT',9998765455)
INSERT INTO DOCTOR VALUES
('D07','SUNIL OZA','ANAND','EYE',9812134243)

CREATE TABLE PATIENT
(PID VARCHAR2(4) PRIMARY KEY,
PNAME VARCHAR2(25) NOT NULL,
BIRDT DATE NOT NULL,
PCITY VARCHAR2(20),
GENDER CHAR(1) DEFAULT 'M'
)

DESC PATIENT
SELECT * FROM PATIENT

INSERT INTO PATIENT VALUES
('P01','KRUNAL SHAH','12-SEP-1998','SURAT','M')
INSERT INTO PATIENT VALUES
('P02','KARTIK SINGH','13-DEC-1965','NAVSARI','M')
INSERT INTO PATIENT VALUES
('P03','SACHIN PANDYA','14-FEB-1976','ANAND','M')
INSERT INTO PATIENT VALUES
('P04','KARTAN PATEL','7-JUL-1946','NANDIAD','M')
INSERT INTO PATIENT VALUES
('P05','MONAL SHAH','23-MAR-1999','ANAND','F')
INSERT INTO PATIENT VALUES
('P06','POOJA SONI','28-DEC-2003','RAJKOT','F')
INSERT INTO PATIENT VALUES
('P07','KARTIK SINGH','11-JAN-2011','BARODA','F')

CREATE TABLE TREATEMENT
(TID VARCHAR2(4) PRIMARY KEY,
TDETAIL VARCHAR2(25),
CHARGES NUMBER(5))

DESC TREATEMENT
SELECT * FROM TREATEMENT

INSERT INTO TREATEMENT VALUES
('T01','RETINA',1000)
INSERT INTO TREATEMENT VALUES
('T02','KNEE',1500)
INSERT INTO TREATEMENT VALUES
('T03','SPINE',800)
INSERT INTO TREATEMENT VALUES
('T04','ROOT CANAL',1000)
INSERT INTO TREATEMENT VALUES
('T05','ARTHRITIS',600)
INSERT INTO TREATEMENT VALUES
('T06','TOOTH CLEAN',500)
INSERT INTO TREATEMENT VALUES
('T07','SINUS',600)

CREATE TABLE APPOINT
(APID NUMBER(3) PRIMARY KEY,
DOID VARCHAR2(4) REFERENCES DOCTOR(DOID),
PID VARCHAR2(4) REFERENCES PATIENT(PID),
TID VARCHAR2(4) REFERENCES TREATEMENT(TID),
APPDATE DATE,
DURATION NUMBER(2),
STATUS CHAR(1))

DESC APPOINT
SELECT * FROM APPOINT

INSERT INTO APPOINT VALUES
(101,'D02','P01','T01','2-DEC-22',20,'C')
INSERT INTO APPOINT VALUES
(102,'D03','P03','T04','18-SEP-22',25,'C')
INSERT INTO APPOINT VALUES
(103,'D05','P06','T06','20-MAY-22',15,'I')
INSERT INTO APPOINT VALUES
(104,'D04','P04','T05','27-JUN-22',30,'C')
INSERT INTO APPOINT VALUES
(105,'D04','P01','T02','15-AUG-22',40,'I')
INSERT INTO APPOINT VALUES
(106,'D06','P02','T07','13-OCT-22',30,'C')
INSERT INTO APPOINT VALUES
(107,'PD01','P07','T03','17-NOV-22',40,'I')