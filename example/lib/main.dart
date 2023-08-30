import 'package:example_lib/order.dart';
import 'package:example_lib/product.dart';
import 'package:example_lib/sgp.dart';

void main() {
  var sgp = SGP();

  var pizzaBasicNormal = Pizza(
      'p1',
      'Custom Pizza',
      15.0,
      'Calories: 250, Fat: 10g',
      ['Cheese', 'Tomato Sauce'],
      'Basic Pizza',
      PizzaSize.Normal);
  var pizzaHawaiianFamily = Pizza(
      'p2',
      'Custom Pizza',
      18.0,
      'Calories: 300, Fat: 12g',
      ['Cheese', 'Tomato Sauce', 'Ham', 'Pineapple'],
      'Pizza Hawaiian',
      PizzaSize.Family);

  var limonade = Beverage('b1', 'Limonade', 3.0, 'Calories: 100, Sugar: 20g');

  sgp.products = [pizzaBasicNormal, pizzaHawaiianFamily, limonade];

  var order = Order(1, [
    OrderItem('p1', 2),
    OrderItem('b1', 3),
    OrderItem('p2', 1),
  ]);

  sgp.addOrder(order);

  print('Total for Order ${order.id}: \$${sgp.calculateTotal(order)}');

  for (var item in order.items) {
    var product = sgp.products.firstWhere((p) => p.id == item.productId);
    if (product is Pizza) {
      var sizeString = product.size == PizzaSize.Normal ? 'Normal' : 'Family';
      print('Pizza: ${product.customName}');
      print('Size: $sizeString');
      print('Ingredients: ${product.additionalIngredients.join(', ')}');
    } else {
      print('Product: ${product.name}');
    }
  }
}
