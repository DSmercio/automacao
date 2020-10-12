class User < SitePrism::Page
    set_url '/cadastro/'
    element :nome, '#nome'
    element :email, '#email'
    element :senha, '#senha'

    element :cadastrar, 'input[value="Cadastrar"]'


    def preencher_usuario
        nome.set 'Teste Automacao'
        email.set 'test_auto1187@test.com'
        senha.set '123456'
        cadastrar.click
    end



end