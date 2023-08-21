            #language: pt

            Funcionalidade: Login na Plataforma
            Como cliente da EBAC-Shop
            Quero fazer o login (autenticação) na Plataforma
            Para vizualizar meus pedidos

            Contexto:
            Dado que eu acesse a pagina da EBAC-Shop

            Cenário: Autenticação válida
            Quando eu insrir "ari0008@gmail.com.br"
            E a senha "3434@feliz"
            Então deve ser direcionada para a pagina da loja

            Cenário: Usuário inválido
            Quando eu inserir usuário inexistente
            Então deve exibir a mensagem de erro: "Usuário não cadastrado em nossa base"

            Cenário: Usuário com senha inválida
            Quando for inseriro a senha ou o usuário inválido
            Então deve exibir uma mensagem de erro: "Usuário ou senha invalidos"

            Esquema de Canário: Validar autenticação Inválidas
            Quando eu inserir <usuario> e <senha>
            Então deve exibir uma mensagem de erro:

            Exemplos:
            | usuario             | senha        | mensagem                               |
            | "ari0909@gmail.com" | "3434@feliz" | "Usuário ou senha inválido"            |
            | "ari11@gmail.com"   | 0000@felis   | "Usuário não cadastrado em nossa base" |

