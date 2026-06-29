Funcionalidade: Cálculo do valor total do pedido
  Como cliente do LocalEats
  Eu quero que o valor total do meu pedido seja calculado automaticamente
  Para que eu saiba quanto vou pagar antes de confirmar o pedido

  Cenário: Somar o valor dos itens de um pedido
    Dado que o pedido contém os itens com valores [10, 20, 30]
    Quando o valor total do pedido é calculado
    Então o resultado deve ser 60

  Cenário: Pedido sem itens
    Dado que o pedido não contém nenhum item
    Quando o valor total do pedido é calculado
    Então o resultado deve ser 0
