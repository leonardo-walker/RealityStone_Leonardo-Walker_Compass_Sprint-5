#language: pt

Funcionalidade: Cadastro de administrador
    Como administrador do e-commerce Front - ServeRest
    Quero realizar cadastro 
    Para logar na aplicação

    Contexto: 
        Dado que esteja na tela de cadastro para administrador

    Esquema do Cenário: Validar o cadastro de administrador
        Quando o administrador preencher os campos "<Digite seu nome>", "<Digite seu email>" e "<Digite sua senha>"
        Então mensagem é exibida "<msg>"
        Exemplos:
        |Digite seu nome |Digite seu email     |Digite sua senha |msg                            |
        |                |mariamu38@uorak.com  |@Teste123        |Nome é obrigatório             |
        |Eduardo         |                     |@Teste123        |Email é obrigatório            |
        |Eduardo         |mariamu38@uorak      |@Teste123        |Email deve ser um email válido |
        |Eduardo         |mariamu38@uorak.com  |                 |Password é obrigatório         |
        |Eduardo         |mariamu38@uorak.com  |@Teste123        |Cadastro realizado com sucesso |
    
    Cenário: fazer registro com email já cadastrado
        Dado que esteja na tela de cadastro
        Quando o administrador preencher campo "<Digite seu nome>", "<Digite seu email>" e "<Digite sua senha>" com email ja cadastrado  
        Então mensagem é exibida "<msg>"
        Exemplos:
        |Digite seu nome |Digite seu email      |Digite sua senha |msg                            |
        |Luis            |mariamu383@uorak.com  |@Teste123        |Este email já está sendo usado |

    Cenário: fazer registro após ter realizado tentativas de cadastro inválidas
        Dado que esteja na tela de cadastro e a necessidade de já ter executado tentativas de cadastro inválidas
        Quando o usuário preencher os campos "<Digite seu nome>", "<Digite seu email>" e "<Digite sua senha>"
        Então mensagem é exibida "<msg>"
        Exemplos:
        |Digite seu nome |Digite seu email     |Digite sua senha |msg                               |
        |                |mariamu381@uorak.com |@Teste123        |Nome não pode ficar em branco     |
        |Lucas           |                     |@Teste123        |Email não pode ficar em branco    |
        |Lucas           |mariamu381@uorak     |@Teste123        |Email deve ser um email válido    |
        |Lucas           |mariamu381@uorak.com |                 |Password não pode ficar em branco |
        |Lucas           |mariamu381@uorak.com |@Teste123        |Cadastro realizado com sucesso    |