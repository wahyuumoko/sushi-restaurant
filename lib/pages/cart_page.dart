import 'package:flutter/material.dart';
import 'package:myapp/models/food.dart';
import 'package:myapp/models/shop.dart';
import 'package:myapp/theme/colors.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: const Text("Food Cart"),
          backgroundColor: primaryColor,
        ),
        body: ListView.builder(
          itemCount: value.cart.length,
          itemBuilder: (context, index) {
            // get food form cart
            final Food food = value.cart[index];
            // get food price

            // return list tile
          },
        ),
      ),
    );
  }
}
