create schema agendabarba;
use agendabarba;
-- Criação da tabela Cliente
CREATE TABLE Cliente (
    ClienteID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Telefone VARCHAR(15),
    Email VARCHAR(100)
);

-- Criação da tabela Barbeiro
CREATE TABLE Barbeiro (
    BarbeiroID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Especialidade VARCHAR(100)
);

-- Criação da tabela Agendamento
CREATE TABLE Agendamento (
    AgendamentoID INT PRIMARY KEY AUTO_INCREMENT,
    ClienteID INT,
    BarbeiroID INT,
    DataHora DATETIME NOT NULL,
    Servico VARCHAR(100),
    FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID),
    FOREIGN KEY (BarbeiroID) REFERENCES Barbeiro(BarbeiroID)
);

-- Inserção de dados de exemplo
INSERT INTO Cliente (Nome, Telefone, Email) VALUES ('João Silva', '123456789', 'joao@example.com');
INSERT INTO Barbeiro (Nome, Especialidade) VALUES ('Carlos Pereira', 'Corte de Cabelo');
INSERT INTO Agendamento (ClienteID, BarbeiroID, DataHora, Servico) VALUES (1, 1, '2025-06-26 10:00:00', 'Corte de Cabelo');
