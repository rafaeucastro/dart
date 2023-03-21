import 'produto.dart' show Produto;
import 'venda.dart' show Venda;
import 'cliente.dart' show Cliente;
import 'venda_item.dart' show VendaItem;

void main() {
  var vendaItem1 = VendaItem(
      quantidade: 30,
      produto: Produto(codigo: 1, nome: "Lápis", preco: 6.00, desconto: 0.5));

  var venda = Venda(
      cliente: Cliente(nome: "Rafael", cpf: "123.456.789-00"),
      itens: <VendaItem>[
        vendaItem1,
        VendaItem(
            quantidade: 20,
            produto: Produto(
                codigo: 2, nome: "Caderno", preco: 20.00, desconto: 0.25)),
        VendaItem(
            quantidade: 100,
            produto: Produto(
                codigo: 3, nome: "Borracha", preco: 2.00, desconto: 0.5))
      ]);

  print("O valor total dessa venda é: ${venda.valorTotal}");
  print("Nome do primeiro produto: ${venda.itens[0].produto!.nome}");
  print("O nome do cliente é: ${venda.cliente!.nome}"); 
}
