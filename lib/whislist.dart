import 'package:addtocart_hive/cart.dart';
import 'package:flutter/material.dart';

class WhishlistDemo extends StatelessWidget {
  final List<Map<String, String>> wishlistItems;

  WhishlistDemo({required this.wishlistItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 246, 90, 186),
        title: Text(
          "Wishlist",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: wishlistItems.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image(image: AssetImage(wishlistItems[index]["image"]!)),
              title: Text(wishlistItems[index]["name"]!),
              subtitle: Text(wishlistItems[index]["price"]!),
              trailing: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddtoCartExample(
                        imagePath: wishlistItems[index]["image"]!,
                        name: wishlistItems[index]["name"]!,
                        price: wishlistItems[index]["price"]!,
                      ),
                    ),
                  );
                },
                child: Text("ADD TO CART"),
              ),
            );
          },
        ),
      ),
    );
  }
}