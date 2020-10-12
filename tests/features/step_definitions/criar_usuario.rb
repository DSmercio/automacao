Quando("eu cadastro meu usuario") do
  user.load
  sleep(5)
  user.preencher_usuario

  sleep(5)
end
  
  Entao("eu verifico se o usuario foi cadastrado") do
    @texto = find('div.alert.alert-success')
    expect(@texto.text).to eql 'Usuário inserido com sucesso'

end