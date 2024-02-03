import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoeshop/components/my_shoe_tile.dart';
import 'package:shoeshop/models/cart.dart';
import 'package:shoeshop/models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addToCart(shoe);

    // show Dialog to show user that the shoe is added
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Added to Cart"),
        content: Text("${shoe.name} has been added to your cart"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Continue Shopping"),
          ),

        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) {
        return Column(
          children: [
            // search
            Container(
              padding: const EdgeInsets.all(10),
              margin:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 2.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  labelText: 'Search',
                  focusColor: Colors.grey,
                  border: null,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),

            //  message
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 25.0,
                vertical: 10.0,
              ),
              child: Text(
                "Every one flies, some fly longer than others",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 25.0,
                vertical: 10.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hot Picks 🔥",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),

            // list of products
            const SizedBox(
              height: 10,
            ),

            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: value.saleShoeList().length,
                  itemBuilder: (context, index) {
                    Shoe shoe = value.saleShoeList()[index];
                    return ShoeTile(
                      shoe: shoe,
                      onTap: () => addShoeToCart(shoe),
                    );
                  }),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                top: 20.0,
              ),
              child: Divider(
                color: Colors.white,
              ),
            ),
          ],
        );
      },
    );
  }
}
