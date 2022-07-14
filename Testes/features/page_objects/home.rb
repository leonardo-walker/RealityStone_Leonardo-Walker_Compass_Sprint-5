class Home < SitePrism::Page
    set_url '/'

    element :logo, 'img[class="imagem"]'

end

class Login <SitePrism::Page
    set_url '/login'
    element :email, '#email'
    element :password, '#password'
    element :button, 'button[type="submit"]'
end

class Register <SitePrism::Page
    set_url '/cadastrarusuarios'
    element :nome, '#nome'
    element :email, '#email'
    element :password, '#password'
    element :button, :xpath, '//*[@id="root"]/div/div/form/div[5]/button'
end

class ADMRegister <SitePrism::Page
    set_url '/cadastrarusuarios'
    element :nome, '#nome'
    element :email, '#email'
    element :password, '#password'
    #element :checkbox, 'checkbox[type="checkbox"]'
    element :checkbox, '#administrador'
end
