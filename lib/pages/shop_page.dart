import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_house_app/components/shoe_tile.dart';
import 'package:sneaker_house_app/models/cart.dart';
import 'package:sneaker_house_app/models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    void addShoeToCart(Shoe shoe) {
      Provider.of<Cart>(context, listen: false).addToCart(shoe);

      // alert

      showDialog(
        context: context,
        builder:
            (context) => AlertDialog(
              title: Text("Successfully added"),
              content: Text("Check Your cart"),
            ),
      );
    }

    return Consumer<Cart>(
      builder:
          (context, value, child) => Column(
            children: [
              // searchbar
              Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Search", style: TextStyle(color: Colors.grey)),

                    Icon(Icons.search, color: Colors.grey[600]),
                  ],
                ),
              ),

              //message
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),

                child: Text(
                  "Fly higher.. just always take a moment to see how far you've come.",
                  style: TextStyle(color: Colors.grey.shade700),
                  textAlign: TextAlign.center,
                ),
              ),

              //items - hot pics
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Hot Pics !!",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text("See All", style: TextStyle(color: Colors.blue)),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              Expanded(
                child: ListView.builder(
                  itemCount: value.getShoeList().length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    Shoe shoe = value.getShoeList()[index];
                    return ShoeTile(
                      shoe: shoe,
                      onTap: () => addShoeToCart(shoe),
                    );
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 25.0, left: 25, right: 25),
                child: Divider(color: Colors.white),
              ),
            ],
          ),
    );
  }
}
