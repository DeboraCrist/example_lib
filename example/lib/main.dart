import 'package:example_lib/order.dart';
import 'package:example_lib/product.dart';
import 'package:example_lib/sgp.dart';

void main() {
  var sgp = SGP();

  var pizza = Pizza('p1', 'Custom Pizza', 15.0, 'Calories: 250, Fat: 10g',
      ['Cheese', 'Tomato Sauce']);
  var limonade = Beverage('b1', 'Limonade', 3.0, 'Calories: 100, Sugar: 20g');

  sgp.products = [pizza, limonade];

  var order = Order(1, [
    OrderItem('p1', 2),
    OrderItem('b1', 4),
  ]);

  sgp.addOrder(order);

  print('Total for Order ${order.id}: \$${sgp.calculateTotal(order)}');
}
