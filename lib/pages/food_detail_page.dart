import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/models/food.dart';
import 'package:myapp/theme/colors.dart';

class FoodDetailPage extends StatefulWidget {
  final Food food;
  const FoodDetailPage({required this.food, super.key});

  @override
  State<FoodDetailPage> createState() => _FoodDetailPageState();
}

class _FoodDetailPageState extends State<FoodDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3305623129.
        foregroundColor: Colors.grey[900],
      ),
      body: Column(
        children: [
          // listview of food details
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView(
                children: [
                  // images
                  Image.asset(
                    widget.food.imagePath,
                    height: 200,
                  ),

                  const SizedBox(width: 5),

                  // rating
                  Row(
                    children: [
                      // star icon
                      Icon(
                        Icons.star,
                        color: Colors.yellow[800],
                      ),

                      const SizedBox(height: 10),

                      // rating
                      Text(
                        widget.food.rating,
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  // food name
                  Text(widget.food.name,
                      style: GoogleFonts.dmSerifDisplay(fontSize: 28)),

                  const SizedBox(height: 25),

                  // description
                  Text(
                    "Description",
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    "Sushi (すし, 寿司, 鮨, 鮓) is a Japanese dish of prepared vinegared rice (鮨飯, sushi-meshi), usually with some sugar and salt, plus a variety of ingredients (ねた, neta), such as vegetables, and any meat, but most commonly seafood (often raw but can be cooked). Styles of sushi and its presentation vary widely, but the one key ingredient is sushi rice, also referred to as shari (しゃり), or sumeshi (酢飯).",
                    style: TextStyle(
                      color: Colors.grey[600],
                      height: 2,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // price + quantity + add to cart btn
          Container(
            color: primaryColor,
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                // price quantity
                Row(
                  children: [
                    // price
                    Text(
                      "\$" + widget.food.price,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    //quantity
                  ],
                ),
                // add to cart btn
              ],
            ),
          ),

          // description
        ],
      ),
    );
  }
}
