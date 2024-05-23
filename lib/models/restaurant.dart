import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_first_flutter/models/cart_item.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  //list of food menu
  final List<Food> _menu = [
    //burgers
    Food(
      name: "Cheese Burger",
      description: "hot cheese",
      imagePath: "lib/images/burgers/burger2.jpg",
      price: 0.99,
      foodCategory: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Hot cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99),
      ],
    ),
    Food(
      name: "Beef Burger",
      description: "large beef",
      imagePath: "lib/images/burgers/burger3.avif",
      price: 0.99,
      foodCategory: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Hot cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99),
      ],
    ),
    Food(
      name: "Chicken Burger",
      description: "large [chicken]",
      imagePath: "lib/images/burgers/burger4.avif",
      price: 0.99,
      foodCategory: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Hot cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99),
      ],
    ),
    Food(
      name: "Bacon Burger",
      description: "large bacon",
      imagePath: "lib/images/burgers/burger5.jpg",
      price: 0.99,
      foodCategory: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Hot cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99),
      ],
    ),
    Food(
      name: "Fish Burger",
      description: "large fish",
      imagePath: "lib/images/burgers/burger6.avif",
      price: 0.99,
      foodCategory: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Hot cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avacado", price: 2.99),
      ],
    ),

    //salads
    Food(
      name: "Sun salad",
      description: "leaves, tomato",
      imagePath: "lib/images/salads/salad1.avif",
      price: 7.99,
      foodCategory: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled chicken", price: 1.99),
        Addon(name: "Anchovies", price: 3.99),
        Addon(name: "Extra Parmesan", price: 2.99),
      ],
    ),
    Food(
      name: "Moon salad",
      description: "leaves, tomato",
      imagePath: "lib/images/salads/salad2.avif",
      price: 7.99,
      foodCategory: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled chicken", price: 1.99),
        Addon(name: "Anchovies", price: 3.99),
        Addon(name: "Extra Parmesan", price: 2.99),
      ],
    ),
    Food(
      name: "Sea salad",
      description: "leaves, tomato",
      imagePath: "lib/images/salads/salad3.avif",
      price: 7.99,
      foodCategory: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled chicken", price: 1.99),
        Addon(name: "Anchovies", price: 3.99),
        Addon(name: "Extra Parmesan", price: 2.99),
      ],
    ),
    Food(
      name: "Rain salad",
      description: "leaves, tomato",
      imagePath: "lib/images/salads/salad4.avif",
      price: 7.99,
      foodCategory: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled chicken", price: 1.99),
        Addon(name: "Anchovies", price: 3.99),
        Addon(name: "Extra Parmesan", price: 2.99),
      ],
    ),
    Food(
      name: "Snow salad",
      description: "leaves, tomato",
      imagePath: "lib/images/salads/salad5.avif",
      price: 7.99,
      foodCategory: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled chicken", price: 1.99),
        Addon(name: "Anchovies", price: 3.99),
        Addon(name: "Extra Parmesan", price: 2.99),
      ],
    ),

    //sides
    Food(
      name: "French Frice",
      description: "potato, salt",
      imagePath: "lib/images/sides/sides1.avif",
      price: 7.99,
      foodCategory: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra salt", price: 0.99),
        Addon(name: "With drink", price: 1.99),
        Addon(name: "Extra cheese", price: 3.99),
      ],
    ),
    Food(
      name: "Grilled meat",
      description: "beef",
      imagePath: "lib/images/sides/sides2.avif",
      price: 10.99,
      foodCategory: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra salt", price: 5.99),
        Addon(name: "Medium", price: 6.99),
        Addon(name: "Large", price: 7.99),
      ],
    ),
    Food(
      name: "soft nuggets",
      description: "chicken, peper",
      imagePath: "lib/images/sides/sides3.avif",
      price: 7.99,
      foodCategory: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra salt", price: 0.99),
        Addon(name: "With drink", price: 1.99),
        Addon(name: "Extra cheese", price: 3.99),
      ],
    ),
    Food(
      name: "Onion roll",
      description: "Onion, salt",
      imagePath: "lib/images/sides/sides4.avif",
      price: 0.99,
      foodCategory: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra salt", price: 1.99),
        Addon(name: "With drink", price: 2.99),
        Addon(name: "Extra cheese", price: 3.99),
      ],
    ),
    Food(
      name: "Bacon bread",
      description: "bacon, bread",
      imagePath: "lib/images/sides/sides5.avif",
      price: 5.99,
      foodCategory: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra salt", price: 2.99),
        Addon(name: "With drink", price: 3.99),
        Addon(name: "Extra cheese", price: 4.99),
      ],
    ),

    //drinks
    Food(
      name: "Orange juice",
      description: "orange, sugar",
      imagePath: "lib/images/drinks/drink1.avif",
      price: 1.99,
      foodCategory: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Small", price: 1.99),
        Addon(name: "Medium", price: 2.99),
        Addon(name: "Large", price: 3.99),
      ],
    ),
    Food(
      name: "Coffee",
      description: "orange, sugar",
      imagePath: "lib/images/drinks/drink2.avif",
      price: 3.99,
      foodCategory: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra dairy", price: 3.99),
        Addon(name: "With vanilla", price: 4.99),
        Addon(name: "With nuts and vanilla", price: 5.99),
      ],
    ),
    Food(
      name: "Cocktail",
      description: "Kharaa vodka and some fruits",
      imagePath: "lib/images/drinks/drink3.avif",
      price: 23.99,
      foodCategory: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Small", price: 23.99),
        Addon(name: "Medium", price: 24.99),
        Addon(name: "Large", price: 25.99),
      ],
    ),
    Food(
      name: "Cocktail",
      description: "Kharaa vodka and some fruits",
      imagePath: "lib/images/drinks/drink4.avif",
      price: 1.99,
      foodCategory: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Small", price: 1.99),
        Addon(name: "Medium", price: 2.99),
        Addon(name: "Large", price: 3.99),
      ],
    ),
    Food(
      name: "Water with ice",
      description: "water of Tuul river",
      imagePath: "lib/images/drinks/drink5.avif",
      price: 0.99,
      foodCategory: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Small", price: 1.99),
        Addon(name: "Medium", price: 2.99),
        Addon(name: "Large", price: 3.99),
      ],
    ),

    //desserts
    Food(
      name: "Icecream",
      description: "Dairy, biscuits",
      imagePath: "lib/images/desserts/dessert1.avif",
      price: 4.99,
      foodCategory: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Small", price: 3.99),
        Addon(name: "Medium", price: 5.99),
        Addon(name: "Large", price: 7.99),
      ],
    ),
    Food(
      name: "cute Donats",
      description: "chocolate, donat",
      imagePath: "lib/images/desserts/dessert2.avif",
      price: 4.99,
      foodCategory: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Small", price: 3.99),
        Addon(name: "Medium", price: 5.99),
        Addon(name: "Large", price: 7.99),
      ],
    ),
    Food(
      name: "Shake",
      description: "Dairy, oreo",
      imagePath: "lib/images/desserts/dessert3.avif",
      price: 4.99,
      foodCategory: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Small", price: 3.99),
        Addon(name: "Medium", price: 5.99),
        Addon(name: "Large", price: 7.99),
      ],
    ),
    Food(
      name: "cake",
      description: "with choco",
      imagePath: "lib/images/desserts/dessert4.avif",
      price: 4.99,
      foodCategory: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Small", price: 3.99),
        Addon(name: "Medium", price: 5.99),
        Addon(name: "Large", price: 7.99),
      ],
    ),
    Food(
      name: "anything",
      description: "anything",
      imagePath: "lib/images/desserts/dessert5.avif",
      price: 4.99,
      foodCategory: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Small", price: 3.99),
        Addon(name: "Medium", price: 5.99),
        Addon(name: "Large", price: 7.99),
      ],
    ),
  ];

  /*

  G E T T E R S

  */
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  /*

  O P E R A T I O N S

  */
  // use cart
  final List<CartItem> _cart = [];

  //add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same
      bool isSameFood = item.food == food;
      // check if the list of selected addons are the same
      bool isSameAddons =
          const ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

// if item already exists, increase it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }
    //otherwise, add a new cart item to the cart
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

//remoce from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

// get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

// get total number of items in cart

  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

//clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }
  /*

  H E L P E R S

  */

  //generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here is your receipt.");
    receipt.writeln();

    // format the date to include up to seconds only
    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("----------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isEmpty) {
        receipt.writeln("  Add-ons: ${_formatPrice(cartItem.food.price)}");
      }
      receipt.writeln();
    }
    receipt.writeln("----------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total price: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }

  //format double value into money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  //format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
