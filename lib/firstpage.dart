
import 'package:addtocart_hive/databade.dart';
import 'package:addtocart_hive/description.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget{
  @override
  State<FirstPage> createState()=> _FirstPageState();
}
class _FirstPageState extends State<FirstPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("SWEATSHIRT"),
      actions: [
        Icon(Icons.shopping_bag),
      ],
      backgroundColor: const Color.fromARGB(255, 194, 101, 211),),
      
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/bgg.jpeg"),fit: BoxFit.cover)),
        child: Column(
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
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2,crossAxisSpacing: 5,mainAxisSpacing: 5), 
                itemCount: 8,
                itemBuilder: (context,index){
                  return SizedBox(
                    height: 20,
                    child: Container(
                      
                      height: 500,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: double.infinity,
                           decoration: BoxDecoration(image: DecorationImage(image: AssetImage(Database.myList[index]["image"]))),
                           child: GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>GpageExample(
                                imagePath: Database.myList[index]['image'], 
                                name: Database.myList[index]['name'],
                                 price: Database.myList[index]['price'])));
                            },
                           ),
                            
                          ),
                          
                          Text(Database.myList[index]["text1"],style: TextStyle(fontSize: 13,color: const Color.fromARGB(255, 51, 44, 44)),),
                        
                          Text(Database.myList[index]["name"],style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            
                            children: [
                              Icon(Icons.currency_rupee,size: 13,),
                              Text(Database.myList[index]["price"]),
                            ],
                          ),
                          
                          
                        ],
                      ),
                    ),
                  );
                }),
            )
            )
        
            ]),
      )
        
      );
    
  }
}
