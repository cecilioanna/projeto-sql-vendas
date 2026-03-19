INSERT INTO clientes (nome, email, cidade) VALUES
('Ana Silva', 'ana@gmail.com', 'São Paulo'),
('Carlos Souza', 'carlos@gmail.com', 'Rio de Janeiro'),
('Mariana Lima', 'mariana@gmail.com', 'Belo Horizonte');

INSERT INTO produtos (nome_produto, preco) VALUES
('Notebook', 3500.00),
('Mouse', 80.00),
('Teclado', 150.00);

INSERT INTO pedidos (id_cliente, id_produto, quantidade) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 1);
