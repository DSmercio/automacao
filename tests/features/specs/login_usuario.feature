#language: pt
@login
Funcionalidade: Login Usuario

-Eu como usuario
-Quero logar com sucesso

@sucesso
Cenario: Login com sucesso
Quando eu insiro as credenciais
Entao eu verifico se o usuario logou

@alertas
Cenario: Login nao permitido
Quando eu nao insiro as credenciais
Entao eu verifico mensagem de alerta de email
E eu verifico mensagem de alerta de senha