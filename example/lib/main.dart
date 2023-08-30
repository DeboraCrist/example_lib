import 'package:flutter/material.dart';
import 'package:example_lib/order.dart';
import 'package:example_lib/product.dart';
import 'package:example_lib/sgp.dart';

void main() {
  var sgp = SGP();

  var pizza = Pizza('p1', 'Margherita Pizza', 15.0);
  var limonade = Beverage('b1', 'Limonade', 3.0);
  var water = Beverage('b2', 'Water', 1.5);
  var wine = Beverage('b3', 'Wine', 20.0);
  var tShirt = FranchiseItem('f1', 'T-Shirt', 25.0);
  var mug = FranchiseItem('f2', 'Mug', 10.0);

  sgp.products = [pizza, limonade, water, wine, tShirt, mug];

  var order = Order(1, [
    OrderItem('p1', 2),
    OrderItem('b1', 3),
    OrderItem('f2', 1),
  ]);

  sgp.addOrder(order);

  print('Total for Order ${order.id}: \$${sgp.calculateTotal(order)}');
}
