import 'package:flutter/material.dart';
import 'package:food_delivery_app/model/food.dart';

class Restaurant extends ChangeNotifier{
  //list of food menu
  final List<Food> _menu = [
    //burgers
    Food(
      name: "Classic Cheeseburger",
      description:
          "A juicy beef patty with melted cheddar, fresh tomato, crisp lettuce, onion, and pickles on a toasted bun.",
      imagePath: "lib/images/burger1.png",
      prices: 780,
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
      imagePath: "lib/images/burger2.png",
      prices: 850,
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
      imagePath: "lib/images/burger3.png",
      prices: 720,
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
      imagePath: "lib/images/burger4.png",
      prices: 790,
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
      imagePath: "lib/images/burger5.png",
      prices: 830,
      availableAddons: [
        Addon(name: "Truffle aioli", price: 130),
        Addon(name: "Extra mushrooms", price: 90),
        Addon(name: "Onion rings", price: 100),
      ],
      category: FoodCategory.burgers,
    ),
    //salads
    Food(
      name: "Classic Caesar Salad",
      description:
          "Crisp romaine lettuce, parmesan cheese, garlic croutons, and creamy Caesar dressing.",
      imagePath: "lib/images/salad1.png",
      prices: 620,
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
      imagePath: "lib/images/salad2.png",
      prices: 650,
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
      imagePath: "lib/images/salad3.png",
      prices: 680,
      availableAddons: [
        Addon(name: "Boiled egg", price: 70),
        Addon(name: "Chickpeas", price: 60),
        Addon(name: "Extra avocado", price: 90),
      ],
      category: FoodCategory.salads,
    ),

    //desserts
    Food(
      name: "Chocolate Lava Cake",
      description:
          "Warm, rich chocolate cake with a gooey molten center, served with a dusting of powdered sugar.",
      imagePath: "lib/images/dessert1.png",
      prices: 550,
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
      imagePath: "lib/images/dessert2.png",
      prices: 600,
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
      imagePath: "lib/images/dessert3.png",
      prices: 520,
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
      imagePath: "lib/images/dessert4.png",
      prices: 650,
      availableAddons: [
        Addon(name: "Extra cocoa", price: 30),
        Addon(name: "Chocolate chips", price: 60),
        Addon(name: "Coffee drizzle", price: 50),
      ],
      category: FoodCategory.desserts,
    ),

    //drinks
    Food(
      name: "Iced Coffee",
      description:
          "Chilled brewed coffee served over ice, lightly sweetened with milk or cream.",
      imagePath: "lib/images/drink1.png",
      prices: 400,
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
      imagePath: "lib/images/drink2.png",
      prices: 450,
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
      imagePath: "lib/images/drink3.png",
      prices: 300,
      availableAddons: [
        Addon(name: "Mint", price: 20),
        Addon(name: "Ginger twist", price: 30),
        Addon(name: "Ice cubes", price: 10),
      ],
      category: FoodCategory.drinks,
    ),
  ];

  //g e t t e r s
  List<Food> get menu => _menu;

  //o p e r a t i o n s
  //add to cart
  //remove from cart
  //get total price of cart
  //clear cart

  // h e l p e r s
  //genearete receipts
  //format double value into money
  //format list of addons into a string
  
}
