# Sistema de Gerenciamento de Oficina Mecânica

Este é um sistema de controle e gerenciamento de ordens de serviço para uma oficina mecânica, onde clientes podem levar seus veículos para conserto ou manutenção. O sistema permite registrar clientes, veículos, equipes de mecânicos e serviços, além de controlar ordens de serviço com detalhes sobre serviços e peças utilizados.

## 📋 Funcionalidades

- **Cadastro de Clientes**: Armazena informações dos clientes, como nome, endereço e telefone.
- **Cadastro de Veículos**: Cada veículo pertence a um cliente e possui dados como placa, modelo e ano.
- **Gestão de Equipes e Mecânicos**: Cada equipe é composta por mecânicos, que têm especialidades específicas.
- **Gerenciamento de Ordens de Serviço (OS)**: Para cada veículo, uma OS pode ser criada, contendo o status, data de emissão, data de conclusão, valor e os serviços e peças necessários.
- **Itens de OS**: Cada OS pode ter múltiplos serviços e peças associadas, calculando automaticamente o valor total.

## 🛠️ Estrutura do Projeto

### Entidades e Relacionamentos

1. **Cliente**: Contém informações sobre os clientes.
2. **Veículo**: Associado a um cliente, contém detalhes do veículo.
3. **Ordem de Serviço (OS)**: Registra as solicitações de serviço para cada veículo.
4. **Equipe**: Define as equipes que trabalham nas OSs.
5. **Mecânico**: Faz parte de uma equipe e possui especialidade.
6. **Serviço**: Contém descrições e valores de mão de obra dos serviços.
7. **Peça**: Registra peças necessárias, com seus valores.
8. **Item_OS**: Associa serviços e peças à OS específica.

### Banco de Dados Relacional

O sistema é estruturado em um banco de dados relacional, com a seguinte estrutura de tabelas:

- **Cliente**: `codigo_cliente`, `nome`, `endereco`, `telefone`
- **Veículo**: `codigo_veiculo`, `placa`, `modelo`, `ano`, `codigo_cliente`
- **Ordem de Serviço (OS)**: `numero_os`, `data_emissao`, `valor_total`, `status`, `data_conclusao`, `codigo_veiculo`, `codigo_equipe`
- **Equipe**: `codigo_equipe`
- **Mecânico**: `codigo_mecanico`, `nome`, `endereco`, `especialidade`, `codigo_equipe`
- **Serviço**: `codigo_servico`, `descricao`, `valor_mao_de_obra`
- **Peça**: `codigo_peca`, `nome`, `valor`
- **Item_OS**: `numero_os`, `codigo_servico`, `codigo_peca`, `quantidade`, `valor_total`