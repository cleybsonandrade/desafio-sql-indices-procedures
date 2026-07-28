USE universidade;

DELIMITER $$

CREATE PROCEDURE sp_universidade(

    IN opcao INT,
    IN pid INT,
    IN pnome VARCHAR(100),
    IN pcurso VARCHAR(100)

)

BEGIN

    IF opcao = 1 THEN

        SELECT * FROM aluno;

    ELSEIF opcao = 2 THEN

        INSERT INTO aluno(id,nome,curso)
        VALUES(pid,pnome,pcurso);

    ELSEIF opcao = 3 THEN

        UPDATE aluno
        SET nome = pnome,
            curso = pcurso
        WHERE id = pid;

    ELSEIF opcao = 4 THEN

        DELETE FROM aluno
        WHERE id = pid;

    ELSE

        SELECT 'Opção inválida' AS Mensagem;

    END IF;

END $$

DELIMITER ;
