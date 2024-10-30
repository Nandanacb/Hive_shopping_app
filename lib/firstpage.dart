
import 'package:addtocart_hive/database.dart';
import 'package:addtocart_hive/description.dart';
import 'package:addtocart_hive/whislist.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget{
  @override
  State<FirstPage> createState()=> _FirstPageState();
}
class _FirstPageState extends State<FirstPage>{
  List<Map<String,String>> myList=[];

 void addMyList(Map<String,String> item){
  setState(() {
    if(myList.contains(item)){
      myList.remove(item);
    }else{
      myList.add(item);
    }
  });
 }

  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(title: Text("SILKY FROCKS",style: TextStyle(color: Colors.white)),
      centerTitle: true,
      actions: [
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>WhishlistDemo(myList: myList)));
          },
          
          child: Icon(Icons.favorite,color: Colors.red,)),
        Icon(Icons.shopping_bag,),
        
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
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2,crossAxisSpacing: 10,mainAxisSpacing: 10,), 
              itemCount: Database.myListItems.length,
              itemBuilder: (context,index){
                final product =Database.myListItems[index];
                bool isInWhishlist= myList.contains(product);

                return  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),border: Border.all(color: const Color.fromARGB(255, 206, 199, 206),width: 4)),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Description(
                              imagePath: product["image"]!,
                              name: product["name"]!,
                              price: product["price"]!,
                              )));
                          },
                          child: Container(
                            height: 80,
                            width: double.infinity,
                           decoration: BoxDecoration(image: DecorationImage(image: AssetImage(product["image"]!))),
                           
                            
                          ),
                        ),
                        
                        Text(product["text1"]?? "",style: TextStyle(fontSize: 13,color: const Color.fromARGB(255, 51, 44, 44)),),
                      
                        Text(product["name"]??"",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold)),
                        Padding(
                          padding: const EdgeInsets.all(2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            
                            children: [
                              Icon(Icons.currency_rupee,size: 13,),
                              Text(product["price"]??""),
                              Spacer(),
                              GestureDetector(
                                onTap: () =>addMyList(product),
                                child: Icon(Icons.favorite,
                                color: isInWhishlist? Colors.red:Colors.grey,)),
                            ],
                          ),
                        ),
                        
                        
                      ],
                    ),
              );
              
              }),
          )
          )
      
          ])
        
      );
    
  }
}
