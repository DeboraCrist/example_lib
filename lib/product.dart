class Product {
  final String id;
  final String name;
  final double price;
  final ProductCategory category; // Novo campo para categoria

  Product(this.id, this.name, this.price, this.category);
}

enum ProductCategory {
  Pizza,
  Beverage,
  FranchiseItem,
}

class Pizza extends Product {
  Pizza(String id, String name, double price)
      : super(id, name, price, ProductCategory.Pizza);
}

class Beverage extends Product {
  Beverage(String id, String name, double price)
      : super(id, name, price, ProductCategory.Beverage);
}

class FranchiseItem extends Product {
  FranchiseItem(String id, String name, double price)
      : super(id, name, price, ProductCategory.FranchiseItem);
}
