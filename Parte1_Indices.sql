USE company;

-- ====================================================
-- Índices
-- ====================================================

-- Índice utilizado para JOIN entre Employee e Department
CREATE INDEX idx_employee_department
ON employee(Dno);

-- Índice utilizado para consultas por cidade
CREATE INDEX idx_department_location
ON department(Dlocation);

--------------------------------------------------------
-- PERGUNTA 1
-- Qual o departamento com maior número de pessoas?
--------------------------------------------------------

SELECT
    d.Dname,
    COUNT(e.Ssn) AS Total_Funcionarios
FROM department d
INNER JOIN employee e
ON d.Dnumber = e.Dno
GROUP BY d.Dname
ORDER BY Total_Funcionarios DESC
LIMIT 1;

--------------------------------------------------------
-- PERGUNTA 2
-- Quais são os departamentos por cidade?
--------------------------------------------------------

SELECT
    Dlocation,
    Dname
FROM department
ORDER BY Dlocation;

--------------------------------------------------------
-- PERGUNTA 3
-- Relação de empregados por departamento
--------------------------------------------------------

SELECT
    d.Dname,
    CONCAT(e.Fname,' ',e.Lname) AS Funcionario
FROM employee e
INNER JOIN department d
ON e.Dno = d.Dnumber
ORDER BY d.Dname, e.Fname;
