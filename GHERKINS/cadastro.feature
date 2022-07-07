#language: pt-br

Funcionalidade: Cadastro de usuário
    Como usuário do e-commerce Front - ServeRest
    Quero realizar cadastro 
    Para logar na aplicação

    Contexto: 
        Dado que esteja na tela de cadastro

    Esquema do Cenário: Validar o cadastro de usuários
        Quando preencher os campos "<Digite seu nome>", "<Digite seu email>" e "<Digite sua senha>"
        Então mensagem é exibida "<msg>"
        Exemplos:
        |Digite seu nome |Digite seu email      |Digite sua senha |msg                            |
        |                |nanate1044@kahase.com |@Teste123        |Nome é obrigatório             |
        |Leonardo        |                      |@Teste123        |Email é obrigatório            |
        |Leonardo        |nanate1044@kahase     |@Teste123        |Email deve ser um email válido |
        |Leonardo        |nanate1044@kahase.com |                 |Password é obrigatório         |
        |Leonardo        |nanate1044@kahase.com |@Teste123        |Cadastro realizado com sucesso |

    Cenário: fazer registro com email já cadastrado
        Dado que esteja na tela de cadastro
        Quando preencher campo "<Digite seu email>" 
        Então mensagem é exibida "<msg>"
        Exemplos:
        |Digite seu nome |Digite seu email      |Digite sua senha |msg                            |
        |Leonardo        |nanate1043@kahase.com |@Teste123        |Este email já está sendo usado |

