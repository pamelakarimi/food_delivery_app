class Food {
  final String name;
  final String description;
  final String imagePath;
  final double prices;
  final FoodCategory category;
  List<Addon> availableAddons;

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.prices,
    required this.availableAddons,
    required this.category,
  });
}

//food category

enum FoodCategory { burgers, salads, sides, desserts, drinks }

//food addons
class Addon {
  String name;
  double price;

  Addon({required this.name, required this.price});
}
