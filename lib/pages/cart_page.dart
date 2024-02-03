import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoeshop/components/my_cart_item.dart';
import 'package:shoeshop/models/cart.dart';
import 'package:shoeshop/models/shoe.dart';

class MyCartPage extends StatefulWidget {
  const MyCartPage({super.key});

  @override
  State<MyCartPage> createState() => _MyCartPageState();
}

class _MyCartPageState extends State<MyCartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) =>  Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              "My Cart",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              )
            ),
            const SizedBox(
              height: 25.0,
            ),

            Expanded(
              child: ListView.builder(
                itemCount: value.userItems.length,
                itemBuilder: (context, index) {
                  // get all the individual shoes in the cart
                    Shoe shoe = value.userItems[index];
                  // return the cart item

                  return CartItem(shoe: shoe,);
                }
              )
            ),

          ],
        ),
      ),
    );
  }
}
