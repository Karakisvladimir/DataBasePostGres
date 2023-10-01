INSERT INTO worker (ID, NAME_worker, BIRTHDAY, LEVEL, SALARY)
VALUES (1, 'John Smith', DATE '1990-03-15', 'Trainee', 800), (2, 'Missis Smith', DATE '1995-05-20', 'Junior', 1200),
(3, 'Michael Johnson', DATE '1988-01-10', 'Middle', 2500), (4, 'Volodimir Zelenskiy ', DATE '1987-08-05', 'Senior', 5200),
(5, 'Daniel Brown', DATE '1993-11-27', 'Trainee', 900),(6, 'Olivia Rodriguez', DATE '1992-04-18', 'Junior', 1300),
(7, 'Luchiano Pavorotti', DATE '1996-07-11', 'Middle', 2800),(8, 'Jenifer Lopez', DATE '1989-12-30', 'Senior', 5100),
(9, 'Hylio Eglesias', DATE '1991-09-08', 'Trainee', 950),(10, 'Mario Puzo', DATE '1994-02-25', 'Junior', 1250);

INSERT INTO client (ID, NAMES)
VALUES (1, 'Nicon'), (2, 'Apple'), (3, 'Google'), (4, 'Samsung'), (5, 'Cisko');

INSERT INTO project (ID, CLIENT_ID, START_DATE, FINISH_DATE)
VALUES (1, 3, TIMESTAMP '2022-01-15 00:00:00', TIMESTAMP '2024-08-31 00:00:00'),
(2, 2, TIMESTAMP '2023-05-01 00:00:00', TIMESTAMP '2025-04-30 00:00:00'),
(3, 3, TIMESTAMP '2023-10-01 00:00:00', TIMESTAMP '2024-06-30 00:00:00'),
(4, 4, TIMESTAMP '2023-02-01 00:00:00', TIMESTAMP '2025-11-30 00:00:00'),
(5, 5, TIMESTAMP '2023-03-15 00:00:00', TIMESTAMP '2025-01-31 00:00:00'),
(6, 1, TIMESTAMP '2023-06-01 00:00:00', TIMESTAMP '2024-09-30 00:00:00'),
(7, 2, TIMESTAMP '2023-10-01 00:00:00', TIMESTAMP '2025-02-28 00:00:00'),
(8, 3, TIMESTAMP '2024-11-01 00:00:00', TIMESTAMP '2026-04-30 00:00:00'),
(9, 4, TIMESTAMP '2024-04-01 00:00:00', TIMESTAMP '2026-01-31 00:00:00'),
(10, 5, TIMESTAMP '2022-09-15 00:00:00', TIMESTAMP '2024-11-30 00:00:00');

INSERT INTO project_worker (PROJECT_ID, WORKER_ID)
VALUES (1, 1),(1, 2),(1, 3),(2, 4),(2, 5),(3, 6),(3, 7),(4, 8),(4, 9),
       (5, 10),(6, 1),(7, 2),(8, 3),(9, 4), (10, 5);
