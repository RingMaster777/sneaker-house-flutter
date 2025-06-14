import 'package:flutter/material.dart';
import 'package:sneaker_house_app/components/my_list_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                child: Center(
                  child: Icon(
                    Icons.shopping_bag,
                    size: 72,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ),

              MyListTile(
                text: "Home",
                icon: Icons.home,
                onTap: () => Navigator.pop(context),
              ),
              MyListTile(
                text: "Shop",
                icon: Icons.shop,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, "/shop_page");
                },
              ),
              MyListTile(
                text: "Cart",
                icon: Icons.shopping_cart,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, "/cart_page");
                },
              ),
              MyListTile(text: "About", icon: Icons.info, onTap: () {}),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: MyListTile(
              text: "Exit",
              icon: Icons.logout,
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  "/intro_page",
                  (route) => false,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
