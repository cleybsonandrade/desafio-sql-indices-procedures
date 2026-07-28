# desafio-sql-indices-procedures
Projeto do desafio SQL - Índices e Procedures
# Desafio SQL - Índices e Procedures

## Descrição

Este projeto tem como objetivo demonstrar a utilização de índices para otimização de consultas SQL e procedures para manipulação de dados em banco de dados MySQL.

O projeto está dividido em duas partes:

- Parte 1: Criação de índices para melhorar o desempenho das consultas.
- Parte 2: Criação de procedures utilizando estruturas condicionais para realizar operações de SELECT, INSERT, UPDATE e DELETE.

---

# Parte 1 - Índices

Foram analisadas as consultas propostas e criados apenas os índices realmente necessários.

## Índices criados

### employee

Índice:
```sql
CREATE INDEX idx_employee_department
ON employee(Dno);
```

Motivo:

A coluna Dno é utilizada em praticamente todas as consultas que relacionam funcionários aos departamentos.

---

### department

Índice:

```sql
CREATE INDEX idx_department_location
ON department(Dlocation);
```

Motivo:

A coluna Dlocation é utilizada para localizar departamentos por cidade.

---

### employee

Índice:

```sql
CREATE INDEX idx_employee_ssn
ON employee(Ssn);
```

Motivo:

A chave primária já possui índice automaticamente. Este índice é apenas ilustrativo caso a PK não exista.

---

## Tipo de índice

Foi utilizado o índice B-Tree (padrão do MySQL).

Motivos:

- Excelente para pesquisas por igualdade (=)
- Excelente para JOIN
- Excelente para ORDER BY
- Excelente para GROUP BY

Não foi utilizado HASH pois ele somente é eficiente para igualdade e não para agrupamentos.

---

# Parte 2

Foi criada uma procedure que utiliza uma variável de controle para executar:

- SELECT
- INSERT
- UPDATE
- DELETE

A procedure foi implementada para dois bancos:

- Universidade
- E-commerce

Utilizando IF...ELSEIF.
