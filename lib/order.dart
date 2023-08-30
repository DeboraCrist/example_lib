class Order {
  final int id;
  final List<OrderItem> items;

  Order(this.id, this.items);
}

class OrderItem {
  final String productId;
  final int quantity;

  OrderItem(this.productId, this.quantity);
}
