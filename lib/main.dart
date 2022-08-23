import 'dart:ui';

import 'package:flutter/material.dart';
import 'colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnaSayfa(),
      );
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi=MediaQuery.of(context);
    final double ekranYuksekligi=ekranBilgisi.size.height;
    final double ekranGenisligi=ekranBilgisi.size.width;

    return Scaffold(
      backgroundColor: anaRenk,
      appBar: AppBar(
        backgroundColor: anaRenk,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome back,",
                    style: TextStyle(color: yaziRenk1, fontSize: ekranGenisligi/30,fontFamily: "DynaPuff"),
                  ),
                  Text(
                    "Help Good People",
                    style: TextStyle(color: yaziRenk2, fontSize: ekranGenisligi/24,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Container(
                  height: 40,
                  width: 40,
                  margin: const EdgeInsets.only(left: 180, right: 30),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: yaziRenk1),
                  child: TextButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.person_outline,
                      color: yaziRenk2,
                    ),
                  ))
            ],
          ),
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,

        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: EdgeInsets.all(10),
              width: ekranGenisligi,
              height: ekranYuksekligi/6,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: renk1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: yaziRenk2),
                    child: Icon(
                      Icons.wallet,
                      color: yaziRenk1,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Your Wallet",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: yaziRenk1,fontFamily: "DynaPuff"),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "120.000 ₺",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: anaRenk),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(12),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Top Up",
                        style: TextStyle(color: yaziRenk2),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: anaRenk,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.all(14.0),
                width: 380,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: yaziRenk2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 30, right: 10),
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: TextButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.search,
                            color: yaziRenk1,
                          ),
                        )),
                    Text(
                      "Search here",
                      style: TextStyle(color: renk2),
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 60,
                width: 60,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    //color: Color.fromARGB(255, 6, 62, 48)
                color: yaziRenk1
                ),

                // child:  const Icon(Icons.send),
                child: TextButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.send,
                    color: iconRenk,
                  ),
                ),
              ),
              Container(
                  height: 60,
                  width: 60,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      //color: Color.fromARGB(255, 105, 28, 90)
                      color: yaziRenk1),
                  child: TextButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.add_box,
                      color: iconRenk,
                    ),
                  )),
              Container(
                  height: 60,
                  width: 60,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      //color: const Color.fromARGB(255, 192, 23, 11)
                      color: yaziRenk1),
                  child: TextButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.width_full,
                      color: iconRenk,
                    ),
                  )),
              Container(
                  height: 60,
                  width: 60,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      //color: const Color.fromARGB(255, 23, 180, 172)
                      color: yaziRenk1),
                  child: TextButton(
                    onPressed: () {},
                    child: Icon(Icons.blinds_closed, color: iconRenk),
                  )),
              Container(
                  height: 60,
                  width: 60,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      //color: const Color.fromARGB(255, 248, 12, 193)
                      color: yaziRenk1),
                  child: TextButton(
                    onPressed: () {},
                    child: Icon(Icons.vaccines_sharp, color: iconRenk),
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Featured",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: yaziRenk2,
                      fontSize: 16),
                ),
                Text(
                  "See More",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: renk1, fontSize: 12),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Image.asset("images/cocuklar.jpg"),
          ),
          Text(
            "Help Them Smile Again",
            style: TextStyle(color: yaziRenk1, fontSize: 18),
          ),
          Container(
            height: 5,
            width: 400,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                //color: const Color.fromARGB(255, 248, 12, 193)
            color:yaziRenk1),
          ),
          SizedBox(
            height: 8,
            width: 5,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Donate Now",
              style: TextStyle(color: anaRenk),
            ),
            style: TextButton.styleFrom(
              backgroundColor: yaziRenk2,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
          ),
        ],
      ),
    );
  }
}
