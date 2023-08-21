            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-Shop
            Quero escolher meu produto de acordo com meu tamanho e escolha
            E escolher a quantidade
            Para inserir no carrinho de compra

            Contexto:
            Dado que eu acesse o carrinho de compra da EBAC-SHOP

            Cenário: Seleção de produto
            Quando eu escolher o tamanho "grande" e a cor "roxa"
            E a quantidade "1"
            Então deve inserir o produto no carrinho

            Cenário: Seleção de opção
            Quando o carrinho estiver cheio
            E eu selecionar "limpar"
            Então deve voltar a seleção de produto

            Cenário: Quantidade Inválida
            Quando o carrinho passar da quantidade de 10 iténs
            Então deve aparecer a mensagem de erro: Quantidade permitida execedida

            Esquema de Cenário: Opções Inválidas
            Quando eu inseriri <produto> a <cor> e o <tamanho>
            E selecionar a <quantidade>
            Então deve exibri a seguinte <mensagem> de erro

            Exmplos:
            | produto    | cor     | tamanho  | quantidade | mensagem                         |
            | "camiseta" | "verde" | "grande" | "11"       | "Quantidade permitida excedida!" |
