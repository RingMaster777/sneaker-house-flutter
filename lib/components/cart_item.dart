import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_house_app/models/cart.dart';
import 'package:sneaker_house_app/models/shoe.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  // remove item from the cart
  void removeFromCart() {
    Provider.of<Cart>(context, listen: false).removeFromCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.only(bottom: 14),
      child: ListTile(
        leading: Image.asset(widget.shoe.imageUrl, width: 80),
        title: Text(widget.shoe.name),
        subtitle: Text("\$${widget.shoe.price}"),
        trailing: IconButton(
          onPressed: removeFromCart,
          icon: Icon(Icons.delete),
        ),
      ),
    );
  }
}
