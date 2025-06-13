import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_house_app/components/cart_item.dart';
import 'package:sneaker_house_app/models/cart.dart';
import 'package:sneaker_house_app/models/shoe.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  //Provider.of<Cart>.getCartLis

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder:
          (context, value, child) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // heading
                Text(
                  'Cart Page',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),

                const SizedBox(height: 20),

                Expanded(
                  child: ListView.builder(
                    itemCount: value.getCartList().length,
                    itemBuilder: (context, index) {
                      Shoe shoe = value.getCartList()[index];

                      return CartItem(shoe: shoe);
                    },
                  ),
                ),
              ],
            ),
          ),
    );
  }
}
