#language: pt

Funcionalidade: Cadastro de usuário
    Como usuário do e-commerce Front - ServeRest
    Quero realizar cadastro 
    Para logar na aplicação

    Contexto: 
        Dado que esteja na tela de cadastro

    Esquema do Cenário: Validar o cadastro de usuários
        Quando o usuário preencher os campos "<Digite seu nome>", "<Digite seu email>" e "<Digite sua senha>"
        Então mensagem é exibida "<msg>"
        Exemplos:
        |Digite seu nome |Digite seu email      |Digite sua senha |msg                            |
        |                |nanate1044@kahase.com |@Teste123        |Nome é obrigatório             |
        |Pedro           |                      |@Teste123        |Email é obrigatório            |
        |Pedro           |nanate1044@kahase     |@Teste123        |Email deve ser um email válido |
        |Pedro           |nanate1044@kahase.com |                 |Password é obrigatório         |
        |Pedro           |nanate1044@kahase.com |@Teste123        |Cadastro realizado com sucesso |
    
    Cenário: fazer registro com email já cadastrado
        Dado que esteja na tela de cadastro
        Quando o usuário preencher campo "<Digite seu email>" com email ja cadastrado  
        Então mensagem é exibida "<msg>"
        Exemplos:
        |Digite seu nome |Digite seu email      |Digite sua senha |msg                            |
        |Leonardo        |nanate1043@kahase.com |@Teste123        |Este email já está sendo usado |

    Cenário: fazer registro após ter realizado tentativas de cadastro inválidas
        Dado que esteja na tela de cadastro e a necessidade de já ter executado tentativas de cadastro inválidas
        Quando o usuário preencher os campos "<Digite seu nome>", "<Digite seu email>" e "<Digite sua senha>"
        Então mensagem é exibida "<msg>"
        Exemplos:
        |Digite seu nome |Digite seu email       |Digite sua senha |msg                               |
        |                |nanate10445@kahase.com |@Teste123        |Nome não pode ficar em branco     |
        |Carlos          |                       |@Teste123        |Email não pode ficar em branco    |
        |Carlos          |nanate10445@kahase     |@Teste123        |Email deve ser um email válido    |
        |Carlos          |nanate10445@kahase.com |                 |Password não pode ficar em branco |
        |Carlos          |nanate10445@kahase.com |@Teste123        |Cadastro realizado com sucesso    |
