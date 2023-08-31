import 'order.dart';
import 'product.dart';

class SGP {
  List<Order> _orders = [];
  List<Product> _products = [];

  void addOrder(Order order) {
    if (!_orders.contains(order)) {
      _orders.add(order);
    } else {
      throw Exception("Order already exists.");
    }
  }

  void removeOrder(Order order) {
    if (_orders.contains(order)) {
      _orders.remove(order);
    } else {
      throw Exception("Order not found.");
    }
  }

  void addProduct(Product product) {
    _products.add(product);
  }

  double calculateTotal(Order order) {
    double total = 0;
    for (var item in order.items) {
      var product = _products.firstWhere((p) => p.id == item.productId,
          orElse: () => throw Exception("Product not found."));
      total += product.price * item.quantity;
    }
    return total;
  }

  List<Product> get products => _products;
  List<Order> get orders => _orders;
}
