// таке питання Postgres пише все маленькими літерами і я самостійно виправляю на велики літери це є похибка, якщо я залишу їх маленькими ?

CREATE TABLE worker (
    ID BIGINT PRIMARY KEY,
    NAME_worker VARCHAR NOT NULL CHECK(LENGTH(NAME_worker) >= 2 AND LENGTH(NAME_worker) <= 1000),
    BIRTHDAY DATE CHECK(BIRTHDAY > DATE '1900-01-01'),
    LEVEL VARCHAR(10) NOT NULL,
    SALARY INT CHECK(SALARY >= 100 AND SALARY <= 100000)
);

ALTER TABLE worker
ADD CONSTRAINT level_check
CHECK (LEVEL IN ('Trainee', 'Junior', 'Middle', 'Senior'));

CREATE TABLE  client(
ID BIGINT PRIMARY key,
NAMES VARCHAR NOT NULL CHECK(LENGTH(NAMES) >= 2 AND LENGTH(NAMES) <= 1000)
);

CREATE TABLE   project (
ID BIGINT PRIMARY KEY,
CLIENT_ID BIGINT NOT NULL,
START_DATE TIMESTAMP NOT NULL,
FINISH_DATE TIMESTAMP NOT NULL,
FOREIGN KEY (CLIENT_ID) REFERENCES client(ID)
);

CREATE TABLE project_worker (
PROJECT_ID BIGINT,
WORKER_ID BIGINT,
PRIMARY KEY (PROJECT_ID, WORKER_ID),
FOREIGN KEY (PROJECT_ID) REFERENCES project(ID),
FOREIGN KEY (WORKER_ID) REFERENCES worker(ID)
);