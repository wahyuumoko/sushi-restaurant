import 'package:flutter/material.dart';
import 'package:myapp/models/food.dart';
import 'package:myapp/models/shop.dart';
import 'package:myapp/theme/colors.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  // remove from cart
  void removeFromCart() {}

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          title: const Text(
            "Food Cart",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: primaryColor,
        ),
        body: ListView.builder(
          itemCount: value.cart.length,
          itemBuilder: (context, index) {
            // get food form cart
            final Food food = value.cart[index];

            // get food name
            final String foodName = food.name;

            // get food price
            final String foodPrice = food.price;

            // return list tile
            return Container(
              decoration: BoxDecoration(color: secondaryColor),
              margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
              child: ListTile(
                title: Text(
                  foodName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  foodPrice,
                  style: TextStyle(
                    color: Colors.grey[200],
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(
                    Icons.delete,
                    color: Colors.grey[300],
                  ),
                  onPressed: removeFromCart,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
