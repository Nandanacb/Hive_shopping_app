
import 'package:addtocart_hive/cart.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';

class WhishlistDemo extends StatelessWidget {
  final List<Map<String,String>> myList;

 

  WhishlistDemo({required this.myList});

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
        itemCount: myList.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context,index){
          return ListTile(
            leading:Image(image: AssetImage(myList[index]["image"]!)),
            title: Text(myList[index]["name"]!),
            subtitle: Text(myList[index]["price"]!),
            trailing: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AddtoCartExample(imagePath: myList[index]["image"]!,
               name: myList[index]["name"]!,
                price: myList[index]["price"]!)));
            }, child:Text("ADD TO CART") ),
          );
          }),
      )
    );
  }
}
