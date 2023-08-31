import 'order.dart';
import 'product.dart';

class SGP {
  static SGP? _instance;

  final List<Order> _orders = [];
  final List<Product> _products = [];

  SGP._();

  static SGP getInstance() {
    _instance ??= SGP._();
    return _instance!;
  }

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

  List<Product> get products => List.unmodifiable(_products);
  List<Order> get orders => List.unmodifiable(_orders);
}
