enum ProductSortType {
  name,
  price,
}

class Meal {
  Meal({required this.name, required this.price});

  final String name;
  final double price;
}

final meals = [
  Meal(name: 'Shawerma', price: 99),
  Meal(name: 'Pasta', price: 40),
  Meal(name: 'Pizza', price: 90),
  Meal(name: 'Grilled Chiken', price: 120),
  Meal(name: 'Sausage', price: 40)

];

