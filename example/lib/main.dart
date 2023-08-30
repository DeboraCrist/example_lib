import 'package:flutter/material.dart';
import 'package:example_lib/order.dart';
import 'package:example_lib/product.dart';
import 'package:example_lib/sgp.dart';

void main() {
  var sgp = SGP();

  var product1 = Product('p1', 'Product 1', 10.0);
  var product2 = Product('p2', 'Product 2', 20.0);

  sgp.products = [product1, product2];

  var order = Order(1, [
    OrderItem('p1', 2),
    OrderItem('p2', 2),
  ]);

  sgp.addOrder(order);

  print('Total for Order ${order.id}: \$${sgp.calculateTotal(order)}');
}
