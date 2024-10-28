
import 'package:addtocart_hive/cart.dart';
import 'package:addtocart_hive/databade.dart';
import 'package:flutter/material.dart';

class WhishlistDemo extends StatelessWidget {
  
 @override
  Widget build(BuildContext context){
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 246, 90, 186),
        title: Text("Wishlist",style: TextStyle(color: Colors.white),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),
        ],
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
        itemCount: 1,
          scrollDirection: Axis.vertical,
          itemBuilder: (context,index){
          return ListTile(
            leading:Image(image: AssetImage(Database.myList[index]["image"])),
            title: Text(Database.myList[index]["name"]),
            subtitle: Text(Database.myList[index]["price"]),
            trailing: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AddtoCartExample(imagePath: Database.myList[index]["image"],
               name: Database.myList[index]["name"],
                price: Database.myList[index]["price"])));
            }, child:Text("ADD TO CART") ),
          );
          }),
      )
    );
  }
}
