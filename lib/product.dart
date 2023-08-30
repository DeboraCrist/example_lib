enum ProductCategory {
  Pizza,
  Beverage,
  FranchiseItem,
}

class Product {
  final String id;
  final String name;
  final double price;
  final ProductCategory category;

  Product(this.id, this.name, this.price, this.category);
}

class Pizza extends Product {
  final String nutritionInfo;
  final List<String> additionalIngredients; // Lista de ingredientes adicionais

  Pizza(String id, String name, double price, this.nutritionInfo,
      this.additionalIngredients)
      : super(id, name, price, ProductCategory.Pizza);
}

class Beverage extends Product {
  final String nutritionInfo;

  Beverage(String id, String name, double price, this.nutritionInfo)
      : super(id, name, price, ProductCategory.Beverage);
}

class FranchiseItem extends Product {
  FranchiseItem(String id, String name, double price)
      : super(id, name, price, ProductCategory.FranchiseItem);
}
