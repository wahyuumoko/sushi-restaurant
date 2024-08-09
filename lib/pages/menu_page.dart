import 'package:flutter/material.dart';
import 'package:myapp/components/button.dart';
import 'package:myapp/theme/colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Text(
          'Tokyo',
          style: TextStyle(color: Colors.grey[900]),
        ),
      ),
      body: Column(
        children: [
          // promo banner
          Container(
            decoration: BoxDecoration(color: primaryColor),
            child: Row(
              children: [
                Column(
                  children: [
                    // promo message
                    Text('Get Promo 32% Off'),

                    // redeem code
                    MyButton(
                      text: "Redeem",
                      onTap: () {},
                    ),
                  ],
                ),

                //images
              ],
            ),
          ),
          //search bar

          // menu list

          // popular food
        ],
      ),
    );
  }
}
