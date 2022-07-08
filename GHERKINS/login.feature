#language: pt-br

Funcionalidade: Login de usuário
    Como usuário do e-commerce Front - ServeRest
    Quero realizar login 
    Para usar a aplicação

    Contexto: 
        Dado que esteja na tela de login

    Esquema do Cenário: Validar o login de usuários
        Quando o usuério preencher os campos "<Digite seu email>" e "<Digite sua senha>"
        Então mensagem é exibida "<msg>"
        Exemplos:
        |Digite seu email      |Digite sua senha |msg                            |
        |                      |@Teste123        |Email é obrigatório            |
        |nanate1043@kahase     |@Teste123        |Email deve ser um email válido |
        |nanate1043@kahase.com |                 |Password é obrigatório         |
        |nanate1043@kahase.com |@Teste123        |Cadastro realizado com sucesso |

    Cenário: fazer login na mesma conta após logout
        Dado que esteja na tela de login
        Quando o usuário preencher campo "<Digite seu email>" e NÃO preencher campo "<Digite sua senha>"
        Então mensagem é exibida "<msg>"
        Exemplos:
        |Digite seu email      |Digite sua senha |msg                     |
        |nanate1043@kahase.com |                 |Password é obrigatório  |
        |nanate1043@kahase.com |                 |Password é obrigatório  |

    Cenário: fazer login após ter feito tentativas de login inválidas
        Dado que esteja na tela de login e a necessidade de já ter executado tentativas de login inválidas
        Quando o usuário preencher campo "<Digite seu email>" e "<Digite sua senha>"
        Então mensagem é exibida "<msg>"
        Exemplos:
        |Digite seu email      |Digite sua senha |msg                               |
        |nanate1043@kahase.com |                 |Password não pode ficar em branco |
        |                      |@Teste123        |Email não pode ficar em branco    |