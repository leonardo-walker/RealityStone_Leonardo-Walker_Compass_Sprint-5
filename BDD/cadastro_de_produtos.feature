#language: pt

Funcionalidade: Cadastrar um novo produto
    Como administrador do e-commerce Front - ServeRest
    Quero cadastrar um novo produto 
    Para os usuários poderem comprar

    Contexto: 
        Dado que esteja na tela de cadastro de produtos

    Esquema do Cenário: Validar o cadastro de um novo produto
        Quando o usuário preencher os campos "<Nome:>", "<Preço:>", "<Descrição:>" e "<Quantidade:>"
        Então mensagem é exibida "<msg>"
        Exemplos:
        |Nome:          |Preço:         |Descrição:                       |Quantidade:            |msg:                                                                              |
        |               |300,00         |Tira fotos com alta qualidade    |1000                   |Token de acesso ausente, inválido, expirado ou usuário do token não existe mais   |
        |Câmera         |               |Tira fotos com alta qualidade    |1000                   |Token de acesso ausente, inválido, expirado ou usuário do token não existe mais   |
        |Câmera         |300,00         |                                 |1000                   |Token de acesso ausente, inválido, expirado ou usuário do token não existe mais   |
        |Câmera         |300,00         |Tira fotos com alta qualidade    |                       |Token de acesso ausente, inválido, expirado ou usuário do token não existe mais   |
        |Câmera         |300,00         |Tira fotos com alta qualidade    |1000                   |Token de acesso ausente, inválido, expirado ou usuário do token não existe mais   |