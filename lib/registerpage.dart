
import 'package:addtocart_hive/login.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';



class Registrationpage extends StatefulWidget{
 
  @override
  State<Registrationpage> createState()=> _RegistrationpageState();
}
class _RegistrationpageState extends State<Registrationpage>{
 

  late Box box;

  List<Map<String,String>> ListItem=[];
   TextEditingController fullnameController =TextEditingController();
  TextEditingController emailpasswordController =TextEditingController();
  TextEditingController  passwordController=TextEditingController();
  TextEditingController confirmpasswordController =TextEditingController();
  TextEditingController phonenumberController =TextEditingController();
  
  
  
  @override
  void initState(){
    super.initState();
    box=Hive.box('mybox');
  }
  Widget build(BuildContext context){
    return Scaffold(
      
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/bgg.jpeg"),fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("CREATE NEW ACCOUNT",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)
                  ],
                ),
              ),
              SizedBox(height: 50,),
              TextField(
                decoration: InputDecoration(border: OutlineInputBorder(),hintText: "Full Name"),
              ),
              SizedBox(height: 25,),
              TextField(
                decoration: InputDecoration(border: OutlineInputBorder(),hintText: "Email"),
              ),
              SizedBox(height: 25,),
              TextField(
                decoration: InputDecoration(border: OutlineInputBorder(),hintText: "Password"),
              ),
              SizedBox(height: 25,),
              TextField(
                decoration: InputDecoration(border: OutlineInputBorder(),hintText: "Confirm password"),
              ),
              SizedBox(height: 25,),
              TextField(
                decoration: InputDecoration(border: OutlineInputBorder(),hintText: "Phone number"),
              ),

              SizedBox(height: 50),
              Container(
                height: 50,
                width: double.infinity,
                color: const Color.fromARGB(255, 221, 55, 250),
                child: Center(child: GestureDetector(
                  onTap: () {
                    setState(() {
                      ListItem.add({
                       'fullname':fullnameController.text,
                       'email':emailpasswordController.text,
                       'password':passwordController.text,
                       'confirmpassword':confirmpasswordController.text,
                       'phonenumber':phonenumberController.text
                    
                    });
                     box.put('ListItem', ListItem.map((e)=> Map<String,dynamic>.from(e)).toList());
                    });

                  },
                  child: Text("CREATE AN ACCOUNT",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.purple),))),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Already You Have An Account?" ),
                  SizedBox(width: 10,),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>  Loginpage()));
                    },
                    child: Text("Log In",style: TextStyle(color: Colors.purple),)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}