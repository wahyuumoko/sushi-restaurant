import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/models/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  const FoodTile({
    super.key,
    required this.food,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),  
      ),
      child: Column(
        children: [
          // image 
          Image.asset(
            food.imagePath,
            height: 140,
            ),

          // text
          Text(
            food.name,
            style: GoogleFonts.dmSerifDisplay(fontSize: 20),
          ),

          // price + rating
          SizedBox(
            width: 160,
            child: Row(
              children: [
                // price
                Text('\$ + food.price'),

                // rating
                Icon(Icons.star),
                Text(food.rating),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
