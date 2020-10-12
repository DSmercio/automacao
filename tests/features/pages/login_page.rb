class Login < SitePrism::Page
    set_url '/login/'
    element :email_login, '#email'
    element :senha_login, '#senha'

    element :entrar, 'button[type="submit"]'


    def preencher_login
        email_login.set 'test_automacao@test.com'
        senha_login.set '123456'
        entrar.click
    end

    def nao_preencher_login
        entrar.click
    end



end