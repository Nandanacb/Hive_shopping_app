import 'package:addtocart_hive/login.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class Registrationpage extends StatefulWidget {
  @override
  State<Registrationpage> createState() => _RegistrationpageState();
}

class _RegistrationpageState extends State<Registrationpage> {
  late Box box;

  TextEditingController fullnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
  TextEditingController phonenumberController = TextEditingController();

  List<Map<String, String>> ListItem = [];
  String _registrationMessage = "";

  @override
  void initState() {
    super.initState();
    box = Hive.box('mybox');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 90, 186),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                  child: Text(
                "CREATE NEW ACCOUNT",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
              SizedBox(height: 80),
              SizedBox(
                height: 50,
                width: 300,
                child: TextField(
                  controller: fullnameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Full Name"),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 50,
                width: 300,
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Email"),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 50,
                width: 300,
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Password"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: 300,
                child: TextField(
                  controller: confirmpasswordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Confirm password"),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 50,
                width: 300,
                child: TextField(
                  controller: phonenumberController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Phone number"),
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 249, 237, 251),
                    shape: RoundedRectangleBorder(),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    textStyle: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    setState(() {
                      if (fullnameController.text.isEmpty ||
                          emailController.text.isEmpty ||
                          passwordController.text.isEmpty ||
                          confirmpasswordController.text.isEmpty ||
                          phonenumberController.text.isEmpty) {
                        _registrationMessage = "All fields are required.";
                        return;
                      }
                      if (passwordController.text !=
                          confirmpasswordController.text) {
                        _registrationMessage = "Passwords do not match.";
                        return;
                      }

                      ListItem.add({
                        'fullname': fullnameController.text,
                        'email': emailController.text,
                        'password': passwordController.text,
                        'cpassword': confirmpasswordController.text,
                        'phonenumber': phonenumberController.text
                      });
                      box.put(
                        'ListItem',
                        ListItem.map((e) => Map<String, dynamic>.from(e))
                            .toList(),
                      );

                      fullnameController.clear();
                      emailController.clear();
                      passwordController.clear();
                      confirmpasswordController.clear();
                      phonenumberController.clear();
                      _registrationMessage = "Registration Successful";

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Loginpage()));
                    });
                    print("Registered Items:$ListItem");
                  },
                  child: Text(
                    "Create an account",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple),
                  )),
              SizedBox(height: 40),
              Text("$_registrationMessage"),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Already You Have An Account?"),
                    SizedBox(width: 15),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Loginpage()));
                        },
                        child: Text(
                          "Log In",
                          style: TextStyle(color: Colors.purple),
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
