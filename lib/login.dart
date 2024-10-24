
import 'package:addtocart_hive/firstpage.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';


class Loginpage extends StatefulWidget{
  @override
  State<Loginpage> createState()=> _LoginpageState();
}

class  _LoginpageState extends State<Loginpage>{
  late Box box;
   TextEditingController usernameController =TextEditingController();
  TextEditingController passwordController =TextEditingController();
  String _loginmessage="";
  @override
  void initState(){
    super.initState();
    box=Hive.box('mybox');
  }
  void _login(){
   setState(() {
     String storedusername=box.get('username');
     String storedpassword=box.get('password');

     if(storedusername==usernameController.text && 
     storedpassword==passwordController.text){
      _loginmessage="Login successful";
     }
     else{
      _loginmessage="invalid credentials";
     }
   });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      
      body:Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/bgg.jpeg"),fit: BoxFit.cover)),

       child: Padding(
         padding: const EdgeInsets.all(25),
         child: Column(
          children: [
            SizedBox(height: 30,),
            Text("Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
            SizedBox(height: 50),
            TextField(
              controller: usernameController,
              decoration: InputDecoration(border: OutlineInputBorder(),hintText: "Username"),),
            SizedBox(height: 40,),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(border: OutlineInputBorder(),hintText: "Password"),),
            SizedBox(height: 50),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> FirstPage()));
            }, child: Text("Login",style: TextStyle(fontSize: 20,color: Colors.purple),))
          ],
         ),
       ),
      )
      
    
    );
  }
}
