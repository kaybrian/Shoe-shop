import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoeshop/models/cart.dart';
import 'package:shoeshop/models/shoe.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({
    super.key,
    required this.shoe,
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
      ),
      margin: const EdgeInsets.only(
        bottom: 25.0,
      ),
      child: ListTile(
        leading: Image.asset(
          widget.shoe.imagePath,
        ),
        title: Text(
          widget.shoe.name,
        ),
        subtitle: Text(
          "\$${widget.shoe.price}",
        ),
        trailing: IconButton(
          onPressed: () {
            Provider.of<Cart>(context, listen: false).removeFromCart(widget.shoe);
          },
          icon: const Icon(Icons.delete),
        ),
      ),
    );
  }
}
