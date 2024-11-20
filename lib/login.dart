import 'dart:math';

import 'package:addtocart_hive/firstpage.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  late Box box;

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String _loginmessage = "";

  @override
  void initState() {
    super.initState();
    box = Hive.box('mybox');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 90, 186),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              SizedBox(height: 50),
              SizedBox(
                height: 50,
                width: 300,
                child: TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Username"),
                  onChanged: (text) {
                    setState(() {
                      _loginmessage = "";
                    });
                  },
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 50,
                width: 300,
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Password"),
                  onChanged: (text) {
                    setState(() {
                      _loginmessage = "";
                    });
                  },
                ),
              ),
              SizedBox(height: 50),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(),
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      textStyle: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      List<dynamic> userListDynamic =
                          box.get('ListItem', defaultValue: []);

                      List<Map<String, String>> userList = userListDynamic
                          .map((e) => Map<String, String>.from(e as Map))
                          .toList();

                      bool userFound = false;
                      bool passwordCorrect = false;

                      for (var user in userList) {
                        if (user['fullname'] == usernameController.text) {
                          userFound = true;
                          if (user['password'] == passwordController.text) {
                            passwordCorrect = true;
                            break;
                          }
                        }
                      }

                      if (userFound && passwordCorrect) {
                        setState(() {
                          _loginmessage = "Login Scucessful";
                        });
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    FirstPage()));

                        usernameController.clear();
                        passwordController.clear();
                      } else if (userFound) {
                        setState(() {
                          _loginmessage = "Incorrect Password.";
                        });
                      } else {
                        setState(() {
                          _loginmessage = "Username not Found.";
                        });
                      }
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 20, color: Colors.purple),
                    )),
              ),
              SizedBox(height: 35),
              Text("$_loginmessage"),
            ],
          ),
        ),
      ),
    );
  }
}
