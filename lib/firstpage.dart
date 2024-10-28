
import 'package:addtocart_hive/databade.dart';
import 'package:addtocart_hive/description.dart';
import 'package:addtocart_hive/whislist.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget{
  @override
  State<FirstPage> createState()=> _FirstPageState();
}
class _FirstPageState extends State<FirstPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(title: Text("SILKY FROCKS",style: TextStyle(color: Colors.white),),
      actions: [
        Icon(Icons.shopping_bag),
      ],
      backgroundColor: const Color.fromARGB(255, 246, 90, 186),),
      
      body: 
      Column(
        children: [
          
      
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
      
                children: [
                     Icon(Icons.search,color: const Color.fromARGB(255, 109, 88, 88) ,),
                     Text("Search",style: TextStyle(fontSize: 12,color:const Color.fromARGB(255, 109, 88, 88) ),),
                     Spacer(),
                     Text("Filter",style: TextStyle(fontSize: 12,color: const Color.fromARGB(255, 109, 88, 88) ),),
                     SizedBox(width: 10),
                     Text("sort",style: TextStyle(fontSize: 12,color: const Color.fromARGB(255, 109, 88, 88) ),),
                ],
              ),
            ),),
      
          Expanded(child: Padding(
            padding: const EdgeInsets.all(15),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2,crossAxisSpacing: 10,mainAxisSpacing: 10), 
              itemCount: 8,
              itemBuilder: (context,index){
                return SizedBox(
                  height: 20,
                  child: Container(
                    
                    height: 900,
                    width: double.infinity,
                    decoration: BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 206, 199, 206),width: 4)),
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: double.infinity,
                         decoration: BoxDecoration(image: DecorationImage(image: AssetImage(Database.myList[index]["image"]))),
                         
                          
                        ),
                        
                        Text(Database.myList[index]["text1"],style: TextStyle(fontSize: 13,color: const Color.fromARGB(255, 51, 44, 44)),),
                      
                        Text(Database.myList[index]["name"],style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold)),
                        Padding(
                          padding: const EdgeInsets.all(2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            
                            children: [
                              Icon(Icons.currency_rupee,size: 13,),
                              Text(Database.myList[index]["price"]),
                              Spacer(),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>WhishlistDemo()));
                                },
                                child: Icon(Icons.favorite_outline)),
                            ],
                          ),
                        ),
                        
                        
                      ],
                    ),
                  ),
                );
              }),
          )
          )
      
          ])
        
      );
    
  }
}
