
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Payement extends StatefulWidget {
  @override
  State<Payement> createState() => _PaymentState();
}

class _PaymentState extends State<Payement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(25),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color:  const Color.fromARGB(255, 246, 90, 186)),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Text("Total Amount"),
                          Icon(Icons.arrow_drop_down),
                          Spacer(),
                          Icon(Icons.currency_rupee),
                          Text(""),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.credit_card),
                      Text("  Credit / Debit / ATM Card",style: TextStyle(fontWeight: FontWeight.bold),),
                      Spacer(),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "Note: please ensure your card can be used for online transactions.Lean more",style: TextStyle(color: Colors.grey)),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      height: 220,
                      width: double.infinity,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Card Number"),
                            SizedBox(height: 10),
                            SizedBox(
                                height: 30,
                                width: double.infinity,
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Text("Valid Thru"),
                                      SizedBox(
                                          height: 30,
                                          width: 100,
                                          child: TextField(
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder()),
                                          ))
                                    ],
                                  ),
                                  Spacer(),
                                  Column(
                                    children: [
                                      Text("CVV"),
                                      SizedBox(
                                          height: 30,
                                          width: 100,
                                          child: TextField(
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder()),
                                          ))
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Container(
                                  height: 30,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 212, 245, 80)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text("Pay",style: TextStyle(fontWeight: FontWeight.bold)),
                                      Icon(Icons.currency_rupee,size: 10,),
                                      Text(""),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.percent),
                            Text("  EMI",style: TextStyle(fontWeight: FontWeight.bold)),
                            Spacer(),
                            Icon(Icons.arrow_drop_down),
                          ],
                        ),
                        Text("    GEt Debit and Cardless EMIs on HDFC Bank"),
                        SizedBox(
                          height: 10,
                        ),
                        Text("_______________________________________________"),
                        Row(
                          children: [
                            Icon(Icons.home_work_outlined),
                            Text("  Net Banking",style: TextStyle(fontWeight: FontWeight.bold)),
                            Spacer(),
                            Icon(Icons.arrow_drop_down),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("_______________________________________________"),
                        Row(
                          children: [
                            Icon(Icons.wallet),
                            Text("  Wallets",style: TextStyle(fontWeight: FontWeight.bold)),
                            Spacer(),
                            Icon(Icons.arrow_drop_down),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("_______________________________________________"),
                        Row(
                          children: [
                            Icon(Icons.check_box),
                            Text("  UPI",style: TextStyle(fontWeight: FontWeight.bold)),
                            Spacer(),
                            Icon(Icons.arrow_drop_down),
                          ],
                        ),
                        Text("    Pay by any Upi app"),
                        SizedBox(
                          height: 10,
                        ),
                        Text("_______________________________________________"),
                        Row(children: [
                          Icon(Icons.currency_rupee),
                          Text("  Cash on Delivery",style: TextStyle(fontWeight: FontWeight.bold)),
                          Spacer(),
                          Icon(Icons.arrow_drop_down),
                        ]),
                        SizedBox(
                          height: 10,
                        ),
                        Text("_______________________________________________"),
                        Row(
                          children: [
                            Icon(Icons.card_giftcard),
                            Text("  Have a Flipcart Gift Card?",style: TextStyle(fontWeight: FontWeight.bold)),
                            Spacer(),
                            Text("Add"),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("_______________________________________________"),
                      ]),
                ]),
          )),
    );
  }
}
