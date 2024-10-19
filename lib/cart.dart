
import'package:flutter/material.dart';

class AddtoCartExample extends StatelessWidget{
  final String imagePath;
  final String name;
  final String price;


  AddtoCartExample({required this.imagePath,required this.name,required this.price});
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
     
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/bgg.jpeg"),fit: BoxFit.cover)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },child: Icon(Icons.arrow_back_ios,size: 30,)),
                  
                  Text("  Cart",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              height: 100,
              width: double.infinity,
             
              
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                      child:Image.asset(imagePath), 
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                    
                      children: [
                        Text(name),
                        Text(price),
                    
                        Text("  All issues easy return",style: TextStyle(fontSize: 13),),
                        
                        Row(
                          children: [
                            Icon(Icons.remove),
                            Text("Remove",style: TextStyle(fontSize: 13),),
                          ],
                        ),
                      
                       
                      ],
                      
                    ),
                    
                  ],
                ),
              )
            ),
          ),
          SizedBox(height: 20,),
        SizedBox(height: 10),
          Container(
            height: 500,
            width: double.infinity,
            
            child: Padding(
              padding: const EdgeInsets.all(15),
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
                      Text("1006",style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Total Discounts",style: TextStyle(color: const Color.fromARGB(255, 3, 114, 7),fontSize: 20),),
                      Spacer(),
                  Icon(Icons.currency_rupee),
                   Text("581",style: TextStyle(fontSize: 20)),
                    ],
                  ),
                    SizedBox(height: 10,),
                  Text("_________________________________________________"),
              
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Order Total",style: TextStyle(fontSize: 20)),
                      Spacer(),
                  Icon(Icons.currency_rupee),
                   Text("425",style: TextStyle(fontSize: 20)),
                    ],
                  ),
                   
                   SizedBox(height: 20,),
                  Container(
                    height: 50,
                    width: double.infinity,
                    color: const Color.fromARGB(255, 70, 177, 74),
                    child: Center(child: Text("Buy Now",style: TextStyle(fontSize: 20))),
                  ),
              
                ],
              ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}
