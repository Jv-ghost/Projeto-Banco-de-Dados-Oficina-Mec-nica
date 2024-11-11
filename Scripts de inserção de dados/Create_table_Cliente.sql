use oficinamecanica;

INSERT INTO clientes (idCliente, Nome, Documento, Telefone, Email, Endereço)
VALUES
(1, 'Carlos Silva', '123.456.789-00', '(11) 98765-4321', 'carlos.silva@email.com', 'Rua das Flores, 123'),
(2, 'Mariana Souza', '987.654.321-00', '(11) 91234-5678', 'mariana.souza@email.com', 'Avenida Brasil, 456'),
(3, 'José Oliveira', '111.222.333-44', '(21) 99876-5432', 'jose.oliveira@email.com', 'Rua do Sol, 789'),
(4, 'Ana Costa', '444.555.666-77', '(21) 97654-3210', 'ana.costa@email.com', 'Rua das Acácias, 101'),
(5, 'Lucas Pereira', '777.888.999-00', '(31) 91234-8765', 'lucas.pereira@email.com', 'Avenida Santa Clara, 202'),
(6, 'Fernanda Lima', '333.444.555-66', '(31) 98765-4321', 'fernanda.lima@email.com', 'Rua das Palmeiras, 303'),
(7, 'Ricardo Gomes', '555.666.777-88', '(41) 99887-6655', 'ricardo.gomes@email.com', 'Rua João Pessoa, 404'),
(8, 'Juliana Alves', '888.999.000-11', '(41) 97654-9876', 'juliana.alves@email.com', 'Avenida do Contorno, 505'),
(9, 'Tiago Martins', '222.333.444-55', '(51) 95544-3322', 'tiago.martins@email.com', 'Rua Sete de Setembro, 606'),
(10, 'Cláudia Rocha', '999.000.111-22', '(51) 96754-1212', 'claudia.rocha@email.com', 'Rua do Comércio, 707'),
(11, 'Rafael Santos', '555.123.456-00', '(61) 98877-5544', 'rafael.santos@email.com', 'Setor Central, 808'),
(12, 'Patrícia Ribeiro', '444.234.567-89', '(61) 97653-2345', 'patricia.ribeiro@email.com', 'Rua das Orquídeas, 909'),
(13, 'Eduardo Pereira', '111.333.444-55', '(71) 95544-7766', 'eduardo.pereira@email.com', 'Rua do Mangue, 1010'),
(14, 'Larissa Souza', '222.444.555-66', '(71) 93322-4455', 'larissa.souza@email.com', 'Avenida Oceânica, 2020'),
(15, 'Marcos Silva', '333.555.666-77', '(81) 90022-3344', 'marcos.silva@email.com', 'Rua da Liberdade, 3030'),
(16, 'Roberta Lima', '444.666.777-88', '(81) 91234-9988', 'roberta.lima@email.com', 'Rua São João, 4040'),
(17, 'Ricardo Souza', '555.777.888-99', '(91) 92222-4444', 'ricardo.souza@email.com', 'Rua Princesa Isabel, 5050'),
(18, 'Paula Fernandes', '666.888.999-00', '(91) 93333-5555', 'paula.fernandes@email.com', 'Rua dos Três Irmãos, 6060'),
(19, 'Fernando Martins', '777.888.111-22', '(11) 93456-7766', 'fernando.martins@email.com', 'Rua da Paz, 7070'),
(20, 'Simone Costa', '888.999.222-33', '(11) 94567-8877', 'simone.costa@email.com', 'Avenida Paulista, 8080'),
(21, 'Sérgio Mendes', '999.000.333-44', '(21) 92123-9988', 'sergio.mendes@email.com', 'Rua das Pedras, 9090'),
(22, 'Lúcia Martins', '222.333.555-66', '(21) 93345-6677', 'lucia.martins@email.com', 'Rua dos Lírios, 1011'),
(23, 'Leandro Silva', '333.444.666-77', '(31) 94455-7766', 'leandro.silva@email.com', 'Rua das Violetas, 1111'),
(24, 'Elenice Alves', '444.555.777-88', '(31) 95566-8877', 'elenice.alves@email.com', 'Rua do Bosque, 1212'),
(25, 'Túlio Santos', '555.666.888-99', '(41) 96677-9988', 'tulio.santos@email.com', 'Avenida Independência, 1313'),
(26, 'Marta Rocha', '666.777.999-00', '(41) 97788-0099', 'marta.rocha@email.com', 'Rua Nova, 1414'),
(27, 'Carlos Costa', '777.888.111-22', '(51) 98899-1100', 'carlos.costa@email.com', 'Rua 15 de Novembro, 1515'),
(28, 'Renata Lima', '888.999.222-33', '(51) 99911-2233', 'renata.lima@email.com', 'Rua Coronel Xavier, 1616'),
(29, 'João Oliveira', '999.000.333-44', '(61) 98811-2244', 'joao.oliveira@email.com', 'Rua dos Eucaliptos, 1717'),
(30, 'Márcia Pereira', '222.333.444-55', '(61) 99922-3355', 'marcia.pereira@email.com', 'Avenida Monumental, 1818'),
(31, 'Alexandre Gomes', '333.444.555-66', '(71) 97733-4466', 'alexandre.gomes@email.com', 'Rua do Carmo, 1919'),
(32, 'Beatriz Ribeiro', '444.555.666-77', '(71) 98844-5577', 'beatriz.ribeiro@email.com', 'Rua das Palmeiras, 2020'),
(33, 'Fábio Alves', '555.666.777-88', '(81) 99955-6688', 'fabio.alves@email.com', 'Avenida Boa Vista, 2121'),
(34, 'André Costa', '666.777.888-99', '(81) 91245-7799', 'andre.costa@email.com', 'Rua das Laranjeiras, 2222'),
(35, 'Carolina Lima', '777.888.999-00', '(91) 90044-5500', 'carolina.lima@email.com', 'Rua dos Lírios, 2323'),
(36, 'Gustavo Mendes', '888.999.000-11', '(91) 91112-6633', 'gustavo.mendes@email.com', 'Rua da Alegria, 2424'),
(37, 'Tatiane Alves', '999.000.111-22', '(11) 93456-7890', 'tatiane.alves@email.com', 'Rua da Saúde, 2525'),
(38, 'Vítor Souza', '111.222.333-44', '(11) 94567-8901', 'vitor.souza@email.com', 'Avenida Central, 2626'),
(39, 'Lúcia Gomes', '222.333.444-55', '(21) 96544-1100', 'lucia.gomes@email.com', 'Rua dos Pássaros, 2727'),
(40, 'Márcio Silva', '333.444.555-66', '(21) 98765-2211', 'marcio.silva@email.com', 'Rua do Prado, 2828');

select * from clientes;