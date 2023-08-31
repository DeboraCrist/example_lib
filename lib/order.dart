class OrderItem {
  final String productId;
  final int quantity;

  const OrderItem(this.productId, this.quantity);
}

class Order {
  final int id;
  final List<OrderItem> items;

  const Order(this.id, this.items);
}
