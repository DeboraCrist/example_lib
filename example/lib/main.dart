import 'package:example_lib/order.dart';
import 'package:example_lib/product.dart';
import 'package:example_lib/sgp.dart';

void main() {
  var sgp = SGP();

  var margheritaPizza = Pizza(
    'p1',
    'Pizza Margherita',
    10.0,
    'Calories: 1104',
    ['tomate', 'queijo'],
    'Margherita',
    PizzaSize.Normal,
  );

  var hawaiianPizza = Pizza(
    'p2',
    'Hawaiian Pizza',
    11.0,
    'Calories: 1024',
    ['tomate', 'queijo', 'presunto', 'abacaxi'],
    'Hawaiian',
    PizzaSize.Normal,
  );

  var salamiPizza = Pizza(
    'p3',
    'Salami Pizza',
    12.0,
    'Calories: 1160',
    ['tomate', 'queijo', 'salame'],
    'Salami',
    PizzaSize.Normal,
  );

  var pizzaFamilySize = PizzaSize.Family;

  var queijo = Product('i1', 'Queijo', 0.69, ProductCategory.FranchiseItem);
  var presunto = Product('i2', 'Presunto', 0.99, ProductCategory.FranchiseItem);
  var cebola = Product('i3', 'Cebola', 0.69, ProductCategory.FranchiseItem);
  var abacaxi = Product('i4', 'Abacaxi', 0.79, ProductCategory.FranchiseItem);
  var salame = Product('i5', 'Salame', 0.99, ProductCategory.FranchiseItem);

  var limonada =
      Product('b1', 'Limonada (300ml)', 4.0, ProductCategory.Beverage);
  var agua =
      Product('b2', 'Água sem gás (500ml)', 2.5, ProductCategory.Beverage);
  var vinho =
      Product('b3', 'Vinho (750ml, 13%)', 21.0, ProductCategory.Beverage);

  var merchandise =
      Product('m1', 'Camisa PizzaBoa', 22.0, ProductCategory.FranchiseItem);
  var caneca =
      Product('m2', 'Caneca PizzaBoa', 8.0, ProductCategory.FranchiseItem);

  sgp.addProduct(margheritaPizza);
  sgp.addProduct(hawaiianPizza);
  sgp.addProduct(salamiPizza);
  sgp.addProduct(queijo);
  sgp.addProduct(presunto);
  sgp.addProduct(cebola);
  sgp.addProduct(abacaxi);
  sgp.addProduct(salame);
  sgp.addProduct(limonada);
  sgp.addProduct(agua);
  sgp.addProduct(vinho);
  sgp.addProduct(merchandise);
  sgp.addProduct(caneca);

  var order = Order(1, [
    OrderItem('p1', 2),
    OrderItem('p2', 1),
    OrderItem('i1', 1),
    OrderItem('b1', 2),
  ]);

  sgp.addOrder(order);

  print('Total do pedido ${order.id}: R\$${sgp.calculateTotal(order)}');

  for (var item in order.items) {
    var product = sgp.products.firstWhere((p) => p.id == item.productId);
    if (product is Pizza) {
      var sizeString = product.size == PizzaSize.Normal ? 'Normal' : 'Family';
      print('Pizza: ${product.customName} - Tamanho: $sizeString');
      print('Ingredientes: ${product.additionalIngredients.join(', ')}');
    } else {
      print('Produto: ${product.name}');
    }
  }
}
