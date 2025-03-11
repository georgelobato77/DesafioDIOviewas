-- 1. Trigger de remoção (before delete)
DELIMITER //

CREATE TRIGGER before_delete_usuario
BEFORE DELETE ON usuario
FOR EACH ROW
BEGIN
    INSERT INTO usuario_backup (usuario_id, nome, email, data_exclusao)
    VALUES (OLD.usuario_id, OLD.nome, OLD.email, NOW());
END //

DELIMITER ;

-- 2. Trigger de atualização (before update)
DELIMITER //

CREATE TRIGGER before_update_colaborador
BEFORE UPDATE ON colaborador
FOR EACH ROW
BEGIN
    IF NEW.salario <> OLD.salario THEN
        INSERT INTO historico_salario (colaborador_id, salario_antigo, salario_novo, data_alteracao)
        VALUES (OLD.colaborador_id, OLD.salario, NEW.salario, NOW());
    END IF;
END //

DELIMITER ;
