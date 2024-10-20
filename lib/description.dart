
import 'package:addtocart_hive/cart.dart';
import'package:flutter/material.dart';


class GpageExample extends StatelessWidget{
  final String imagePath;
  final String name;
  final String price;
  GpageExample({
  required this.imagePath,required this.name,required this.price
});



  @override
  Widget build(BuildContext context){
    return Scaffold(
      
      body: Container(
        decoration: BoxDecoration(image:DecorationImage(image: AssetImage("assets/images/bgg.jpeg"),fit: BoxFit.cover) ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap:(){
                   Navigator.pop(context);
                                   } ,
                                   child: Icon(Icons.arrow_back_ios,size: 30,)),
                      
                    ],
                   ),
                 ),
        
        
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
              height: 500,
              width: 400,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),image: DecorationImage(image: AssetImage(imagePath),fit: BoxFit.cover)),
                        ),
            ),
        
        
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(name,
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Spacer(),
                Icon(Icons.favorite,color: Colors.red,),
                Icon(Icons.share,),
              ],
            ),
          ),
             
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text("Beauty with available",
             
             style: TextStyle(fontSize: 15),
             ),
           ),
        
        
         Padding(
           padding: const EdgeInsets.all(5),
           child: Row(
              children: [
              Icon(Icons.currency_rupee,size: 15,),
              Text(price
                  ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
                         
                        ],
                      ),
         ),
        
              
             Padding(
               padding: const EdgeInsets.all(5),
               child: Row(
                 children: [
                   ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>AddtoCartExample(imagePath: imagePath, name: name, price: price)));
                       }, child: Text("Add to Cart",style: TextStyle(fontSize: 10,color: Colors.purple),)),
                 
                 
                Spacer(),
                ElevatedButton(onPressed: (){}, child: Text("Buy Now",style: TextStyle(fontSize: 10,color: Colors.purple),)),
                ],
               ),
             ),
               
             ],
           ),
      )


        
      );

      
    









    
  }
}
