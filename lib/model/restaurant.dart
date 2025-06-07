import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/model/cart_item.dart';
import 'package:food_delivery_app/model/food.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  // Private menu list
  final List<Food> _menu = [
    // Burgers
    Food(
      name: "Classic Cheeseburger",
      description:
          "A juicy beef patty with melted cheddar, fresh tomato, crisp lettuce, onion, and pickles on a toasted bun.",
      imagePath: "assets/images/burgers/burgers1.jpg",
      price: 780,
      availableAddons: [
        Addon(name: "Extra cheese", price: 100),
        Addon(name: "Bacon", price: 150),
        Addon(name: "Avocado", price: 90),
      ],
      category: FoodCategory.burgers,
    ),
    Food(
      name: "BBQ Bacon Burger",
      description:
          "Smoky BBQ sauce, crispy bacon, cheddar cheese, and grilled onions on a flame-grilled beef patty.",
      imagePath: "assets/images/burgers/burgers2.jpg",
      price: 850,
      availableAddons: [
        Addon(name: "Extra cheese", price: 100),
        Addon(name: "Fried egg", price: 120),
        Addon(name: "Jalapeños", price: 80),
      ],
      category: FoodCategory.burgers,
    ),
    Food(
      name: "Veggie Burger",
      description:
          "A grilled plant-based patty with lettuce, tomato, onion, and vegan mayo on a whole wheat bun.",
      imagePath: "assets/images/burgers/burgers3.jpg",
      price: 720,
      availableAddons: [
        Addon(name: "Vegan cheese", price: 100),
        Addon(name: "Grilled mushrooms", price: 90),
        Addon(name: "Avocado", price: 90),
      ],
      category: FoodCategory.burgers,
    ),
    Food(
      name: "Spicy Jalapeño Burger",
      description:
          "Spicy beef patty with pepper jack cheese, jalapeños, chipotle mayo, and crispy onions.",
      imagePath: "assets/images/burgers/burgers4.jpg",
      price: 790,
      availableAddons: [
        Addon(name: "Extra jalapeños", price: 50),
        Addon(name: "Cheddar cheese", price: 100),
        Addon(name: "Grilled onions", price: 70),
      ],
      category: FoodCategory.burgers,
    ),
    Food(
      name: "Mushroom Swiss Burger",
      description:
          "Savory mushrooms sautéed in garlic butter, melted Swiss cheese, and beef patty on a sesame bun.",
      imagePath: "assets/images/burgers/burgers5.jpg",
      price: 830,
      availableAddons: [
        Addon(name: "Truffle aioli", price: 130),
        Addon(name: "Extra mushrooms", price: 90),
        Addon(name: "Onion rings", price: 100),
      ],
      category: FoodCategory.burgers,
    ),

    // Salads
    Food(
      name: "Classic Caesar Salad",
      description:
          "Crisp romaine lettuce, parmesan cheese, garlic croutons, and creamy Caesar dressing.",
      imagePath: "assets/images/salads/salad1.jpg",
      price: 620,
      availableAddons: [
        Addon(name: "Grilled chicken", price: 150),
        Addon(name: "Extra parmesan", price: 100),
        Addon(name: "Avocado", price: 90),
      ],
      category: FoodCategory.salads,
    ),
    Food(
      name: "Greek Salad",
      description:
          "Fresh cucumbers, tomatoes, red onions, kalamata olives, and feta cheese tossed in a lemon-oregano vinaigrette.",
      imagePath: "assets/images/salads/salad2.jpg",
      price: 650,
      availableAddons: [
        Addon(name: "Grilled chicken", price: 150),
        Addon(name: "Feta cheese", price: 100),
        Addon(name: "Pita bread", price: 80),
      ],
      category: FoodCategory.salads,
    ),
    Food(
      name: "Quinoa Avocado Salad",
      description:
          "A wholesome mix of quinoa, cherry tomatoes, avocado, red onion, and spinach with a lemon vinaigrette.",
      imagePath: "assets/images/salads/salad3.jpg",
      price: 680,
      availableAddons: [
        Addon(name: "Boiled egg", price: 70),
        Addon(name: "Chickpeas", price: 60),
        Addon(name: "Extra avocado", price: 90),
      ],
      category: FoodCategory.salads,
    ),

    // Desserts
    Food(
      name: "Chocolate Lava Cake",
      description:
          "Warm, rich chocolate cake with a gooey molten center, served with a dusting of powdered sugar.",
      imagePath: "assets/images/desserts/dessert1.jpg",
      price: 550,
      availableAddons: [
        Addon(name: "Vanilla ice cream", price: 100),
        Addon(name: "Chocolate drizzle", price: 50),
        Addon(name: "Fresh strawberries", price: 80),
      ],
      category: FoodCategory.desserts,
    ),
    Food(
      name: "Classic Cheesecake",
      description:
          "Creamy vanilla cheesecake with a buttery graham cracker crust and a hint of lemon zest.",
      imagePath: "assets/images/desserts/dessert2.jpg",
      price: 600,
      availableAddons: [
        Addon(name: "Strawberry sauce", price: 70),
        Addon(name: "Whipped cream", price: 50),
        Addon(name: "Crushed Oreos", price: 60),
      ],
      category: FoodCategory.desserts,
    ),
    Food(
      name: "Fruit Parfait",
      description:
          "Layers of creamy yogurt, fresh berries, granola, and a drizzle of honey for a light, healthy treat.",
      imagePath: "assets/images/desserts/dessert3.jpg",
      price: 520,
      availableAddons: [
        Addon(name: "Extra granola", price: 40),
        Addon(name: "Chia seeds", price: 30),
        Addon(name: "Banana slices", price: 50),
      ],
      category: FoodCategory.desserts,
    ),
    Food(
      name: "Tiramisu",
      description:
          "Classic Italian dessert made with layers of espresso-soaked ladyfingers and mascarpone cream, dusted with cocoa.",
      imagePath: "assets/images/desserts/dessert4.jpg",
      price: 650,
      availableAddons: [
        Addon(name: "Extra cocoa", price: 30),
        Addon(name: "Chocolate chips", price: 60),
        Addon(name: "Coffee drizzle", price: 50),
      ],
      category: FoodCategory.desserts,
    ),

    // Drinks
    Food(
      name: "Iced Coffee",
      description:
          "Chilled brewed coffee served over ice, lightly sweetened with milk or cream.",
      imagePath: "assets/images/drinks/drinks1.jpg",
      price: 400,
      availableAddons: [
        Addon(name: "Vanilla syrup", price: 40),
        Addon(name: "Extra shot", price: 60),
        Addon(name: "Whipped cream", price: 50),
      ],
      category: FoodCategory.drinks,
    ),
    Food(
      name: "Fresh Mango Smoothie",
      description:
          "A tropical blend of ripe mangoes, yogurt, and honey for a refreshing, creamy drink.",
      imagePath: "assets/images/drinks/drinks2.jpg",
      price: 450,
      availableAddons: [
        Addon(name: "Chia seeds", price: 30),
        Addon(name: "Protein scoop", price: 80),
        Addon(name: "Mint leaves", price: 20),
      ],
      category: FoodCategory.drinks,
    ),
    Food(
      name: "Classic Lemonade",
      description:
          "Freshly squeezed lemons mixed with chilled water and a touch of sugar for a zesty refreshment.",
      imagePath: "assets/images/drinks/drinks3.jpg",
      price: 300,
      availableAddons: [
        Addon(name: "Mint", price: 20),
        Addon(name: "Ginger twist", price: 30),
        Addon(name: "Ice cubes", price: 10),
      ],
      category: FoodCategory.drinks,
    ),
  ];

  final List<CartItem> _cart = [];

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  void addToCart(Food food, List<Addon> selectedAddons) {
    final equality = const DeepCollectionEquality.unordered();
    CartItem? cartItem = _cart.firstWhereOrNull((item) =>
        item.food == food && equality.equals(item.selectedAddons, selectedAddons));

    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }

    notifyListeners();
  }

  void removeFromCart(CartItem cartItem) {
    final index = _cart.indexOf(cartItem);
    if (index != -1) {
      if (_cart[index].quantity > 1) {
        _cart[index].quantity--;
      } else {
        _cart.removeAt(index);
      }
      notifyListeners();
    }
  }

  double getTotalPrice() {
    return _cart.fold(0.0, (total, item) {
      double addonsTotal = item.selectedAddons.fold(0.0, (sum, addon) => sum + addon.price);
      return total + ((item.food.price + addonsTotal) * item.quantity);
    });
  }

  int getTotalItemCount() {
    return _cart.fold(0, (total, item) => total + item.quantity);
  }

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.\n");

    final formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln("\n_ _ _ _ _ _ _ _ _ _ _ _ _ _ __ _ _ _ _ ");

    for (final item in _cart) {
      receipt.writeln("${item.quantity} x ${item.food.name} - ${_formatPrice(item.food.price)}");
      if (item.selectedAddons.isNotEmpty) {
        receipt.writeln("      Add-ons: ${_formatAddons(item.selectedAddons)}");
      }
      receipt.writeln();
    }

    receipt.writeln("_ _ _ _ _ _ _ _ _ _ _ _ _ _ __ _ _ _ _ _ \n");
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }

  String _formatPrice(double price) {
    return NumberFormat.currency(locale: 'en_KE', symbol: 'KES ').format(price);
  }

  String _formatAddons(List<Addon> addons) {
    return addons.map((addon) => "${addon.name} (${_formatPrice(addon.price)})").join(", ");
  }
}
