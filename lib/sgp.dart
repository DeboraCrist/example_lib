import 'order.dart';
import 'product.dart';

class SGP {
  List<Order> orders = [];
  List<Product> products = [];

  void addOrder(Order order) {
    orders.add(order);
  }

  void removeOrder(Order order) {
    orders.remove(order);
  }

  double calculateTotal(Order order) {
    double total = 0;
    for (var item in order.items) {
      var product = products.firstWhere((p) => p.id == item.productId);
      total += product.price * item.quantity;
    }
    return total;
  }

  // Other functionalities can be implemented here
}
