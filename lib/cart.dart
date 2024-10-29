
import 'package:addtocart_hive/database.dart';
import 'package:addtocart_hive/paymentpage.dart';
import'package:flutter/material.dart';

class AddtoCartExample extends StatelessWidget{
  final String imagePath;
  final String name;
  final String price;


  AddtoCartExample({required this.imagePath,required this.name,required this.price});
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
     backgroundColor:   Colors.white,
     appBar: AppBar(
      backgroundColor:   const Color.fromARGB(255, 246, 90, 186),
      title: Text("  Cart",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold,color: Colors.white),),),
      body: Column(
          children: [
            /*Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },child: Icon(Icons.arrow_back_ios,size: 30,)),
                  
                  Text("  Cart",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold,color:  const Color.fromARGB(255, 233, 10, 147),),),
                ],
              ),*/
              SizedBox(height: 20,),
             Container(
              height: 120,
              width: double.infinity,
             decoration: BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 206, 199, 206),width: 2),color: Colors.white),
              
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      
                      
                      child:Image.asset(imagePath), 
                    ),
                    SizedBox(width: 13),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                      
                        children: [
                          Text( name),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.currency_rupee,size: 15),
                              Text( price),
                            ],
                          ),
                      
                          Text(" All issues easy return",style: TextStyle(fontSize: 13),),
                          
                          Row(
                            children: [
                              Icon(Icons.remove),
                              Text(" Remove",style: TextStyle(fontSize: 13),),
                            ],
                          ),
                        
                         
                        ],
                        
                      ),
                    ),
                    
                  ],
                ),
              )
            ),
            SizedBox(height: 10 ),
           Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 206, 199, 206),width: 2),color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("sort by: Sankarstores                           Free Delivery",style: TextStyle(
              fontSize: 15),),
            ),
           ),
          SizedBox(height: 10,),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 206, 199, 206),width: 2),color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Wishlist",style: TextStyle(fontSize: 20),),
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 206, 199, 206),width: 2),color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Text("Price Details (1 item)",style: TextStyle(fontSize: 20),),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Total Product Price",style: TextStyle(fontSize: 20)),
                      Spacer(),
                      Icon(Icons.currency_rupee),
                      Text(price,style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Total Discounts",style: TextStyle(color: const Color.fromARGB(255, 3, 114, 7),fontSize: 20),),
                      Spacer(),
                  Icon(Icons.currency_rupee),
                   Text("30",style: TextStyle(fontSize: 20)),
                    ],
                  ),
                    SizedBox(height: 10,),
                  Text("__________________________________________________"),
              
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Order Total",style: TextStyle(fontSize: 20)),
                      Spacer(),
                  Icon(Icons.currency_rupee),
                   Text("185",style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  
              
                ],
              ),
            ),
          ),
          SizedBox(height: 30,),
          Container(
            height: 60,
            decoration: BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 206, 199, 206),width: 2),color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(Icons.currency_rupee,size: 20,),
                  Text("185"),
                  Spacer(),
                 Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(color: const Color.fromARGB(255, 197, 97, 169)),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Payement()));
                    },
                    child: Center(child: Text("continue"))))
                ],
              ),
            ),
          )
          ],
        ),
      
    );
  }
}
