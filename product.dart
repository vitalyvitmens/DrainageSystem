class ProductGutter {
  final String name;
  final double price;

  ProductGutter({
    required this.name,
    required this.price,
  });
}

List<ProductGutter> products = [
  ProductGutter(name: 'prod1', price: 100.0),
  ProductGutter(name: 'prod2', price: 300.0),
];

void main() {
  var mylist = [6, 7, 9, 8];
  mylist.forEach((e) {
    print('Желобов: $e шт = ${e.toStringAsFixed(2)} руб');
  });

  var sum = products.map((product) => product.price).reduce((v, e) => v + e);
  print("$sum");
}
