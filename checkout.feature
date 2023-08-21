            #language: pt

            Funcionalidade: Tela de cadastro
            Como cliente EBAC-Shop
            Quero fazer concluir meu cadastro
            Para finalizar minhas compras

            Contexto:
            Dado que eu acesse o site da EBAC-Shop eu conclua meu cadastro

            Cenário: Dados obrigatório
            Quando eu inserir o "nome" o "sobrenome"
            E "país" o "endereço" a "cidade"
            E "CEP" o "telefone" e o "endereço de e-mail "
            Então deve aparecer a mensagem ao cliente "Cadastro concluido"

            Cenário: Dados inválidos
            Quando eu inserir "123bonita.com"
            Então deve aparecer a mensagme de erro "Fomrato inválido"

            Cenário: Dados em branco
            Quando eu tentar concluir o cadastro com campus em brando
            Então deve exibir a seguinte mensagem "Há campos sem preenchimento"

            Cenário: Campos Obrigatórios
            Quando eu tentar concluir o cadastro sem os dados obrigatórios
            Então deve exibir a mensagem de erro "Preencher os campus obrigatórios"

            Esquema de Cenário: Opções Inválidas
            Quando eu inserir <endereco de e-mail>
            E tentar concluir cadastro
            Então deve aparecer a <mensagem> de erro

            Exemplos:
            | endereço de e-mail | mensagem           |
            | "123bonita.com"    | "Formato Inválido" |
            | "@123bonita.com"   | "Formato Infalido" |
            | "123bonita@.com"   | "Formato Inválido" |