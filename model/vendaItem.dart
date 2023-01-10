import 'produto.dart';

class VendaItem {
  Produto produto;
  int quantidade;
  double _preco = 0;

  VendaItem({required this.produto, this.quantidade = 1});

  double get preco {
    // ignore: unnecessary_null_comparison
    if (produto != null && _preco == 0) {
      _preco = produto.precoComDesconto;
    }
    return _preco;
  }

  set preco(double novoPreco) {
    if (novoPreco > 0) {
      _preco = novoPreco;
    }
  }
}
