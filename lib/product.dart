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

  const Product(this.id, this.name, this.price, this.category);
}

class Pizza extends Product {
  final String nutritionInfo;
  final List<String> additionalIngredients;
  final String customName;
  final PizzaSize size;

  const Pizza(
    String id,
    String name,
    double price,
    this.nutritionInfo,
    this.additionalIngredients,
    this.customName,
    this.size,
  ) : super(id, name, price, ProductCategory.Pizza);
}

enum PizzaSize {
  Normal,
  Family,
}

class Beverage extends Product {
  final String nutritionInfo;

  const Beverage(
    String id,
    String name,
    double price,
    this.nutritionInfo,
  ) : super(id, name, price, ProductCategory.Beverage);
}

class FranchiseItem extends Product {
  const FranchiseItem(
    String id,
    String name,
    double price,
  ) : super(id, name, price, ProductCategory.FranchiseItem);
}
