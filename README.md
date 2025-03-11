# Personalizando Acessos com Views e Criando Gatilhos para Cenário de E-commerce

Este projeto consiste na criação de views para diferentes cenários e definição de permissões de acesso para usuários. Além disso, foram criados triggers para um cenário de e-commerce.

## Views Criadas

1. **Número de empregados por departamento e localidade**
2. **Lista de departamentos e seus gerentes**
3. **Projetos com maior número de empregados**
4. **Lista de projetos, departamentos e gerentes**
5. **Quais empregados possuem dependentes e se são gerentes**

## Permissões de Acesso

- **Usuário gerente:** Tem acesso a todas as views.
- **Usuário employee:** Tem acesso apenas à view de empregados com dependentes.

## Triggers Criados

1. **Trigger de remoção (before delete):** Armazena informações de usuários que excluem suas contas.
2. **Trigger de atualização (before update):** Registra alterações de salário de colaboradores.

## Como Utilizar

1. Execute os scripts SQL para criar as views e triggers.
2. Defina as permissões de acesso para os usuários.
3. Teste as views e triggers com operações de inserção, atualização e remoção.

## Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues e pull requests.
