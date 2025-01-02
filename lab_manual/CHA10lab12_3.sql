CREATE TABLE myemp1 (
			empid number(7) CONSTRAINT eid_pk PRIMARY KEY,
			last_name varchar2(25),
			firstname varchar2(25),
			dept_id number(7),
			CONSTRAINT deptno_fk FOREIGN KEY(dept_id)
			REFERENCES mydept (deptno));