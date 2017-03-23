#language: pt
#utf-8

Funcionalidade: Cadastrar e Editar Novo Funcionario 
Quero cadastrar um novo funcionario
Para que este usuario tenha acesso ao nosso site

Cenario: Cadastar Funcionario
Dado que eu esteja na pagina do site orangehrm
Quando preencher os dados do funcionario
Entao deverá exibir uma mensagem de sucesso no cadastro

Cenario: Editar Funcionario
Dado que eu esteja logada na pagina lista de empregados
Quando pesquisar o funcionario
Entao deverão ser carregados os dados do mesmo