Quando("eu insiro as credenciais") do
    login.load
    sleep(5)
    login.preencher_login
  
    sleep(5)
  end
    
Entao("eu verifico se o usuario logou") do
    @texto = find('footer > span')
    expect(@texto.text).to eql 'Seu Barriga. Nunca mais esqueça de pagar o aluguel.reset'
  end

Quando("eu nao insiro as credenciais") do
    login.load
    sleep(5)
    login.nao_preencher_login
  
    sleep(5)
  end
    
Entao("eu verifico mensagem de alerta de email") do
    @texto1 = find('body > div:nth-child(2)')
    expect(@texto1.text).to eql 'Email é um campo obrigatório' 
  end

E("eu verifico mensagem de alerta de senha") do
    @texto2 = find('body > div:nth-child(3)')
    expect(@texto2.text).to eql 'Senha é um campo obrigatório' 
end