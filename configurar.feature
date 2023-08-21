#language: pt 

Funcionalidade: configuracao de produto
Como cliente da EBAC Shop  
Quero escolher meu produto de acordo com meu tamanho
Escolher a quantidade
E inserir no carrinho

Contexto: 
Ter a opção de escolher o tamanho, quantidade e cor

Cenário: Escolha de produto
Quando eu escolher o "tamanho", "quantidade" e a "cor"
Então a compra deve ser exibida no carrinho e cinalizar a quantidade de itens.

Cenário: Quantidade excedida    
Quando a quantidade de intens exceder o maximo de 10
Então deve ser exibida a mensagem "você excedeu a quantidade de itens"

Cenário: Esvaziar o carrinho
Quando eu selecionar os produtos 
Então deve aparecer as opções "seguir com a compra" ou "esvaziar carrinho"

Esquema de Cenário: compra de produto
Quando a <quantidade> <cor> <tamanho> forem inceridas no carrinho de compra
Então deve exibir a seguinte <mensagem>

Exmplos:
|produto|quantidade|mensagem|
|"camisa"|"1"|"seguir com a compra"|
|"calça"|"2"|"seguir com a compra"|