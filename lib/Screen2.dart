// ignore_for_file: file_names, prefer_typing_uninitialized_variables, prefer_interpolation_to_compose_strings

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tiobu/BonusScreen.dart';
import 'package:tiobu/HomePage.dart';
import 'package:tiobu/record.dart';

class DonationScreen extends StatefulWidget {
  const DonationScreen({super.key, this.pic, this.name});

  final pic;
  final name;

  @override
  State<DonationScreen> createState() => _DonationScreenState();
}

class _DonationScreenState extends State<DonationScreen> {
  final myController = TextEditingController();
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();

  late SharedPreferences sharedPreferences;

  @override
  void initState() {
    super.initState();
    initalGetSavedData();
  }

  void initalGetSavedData() async {
    sharedPreferences = await SharedPreferences.getInstance();

    Map<String, dynamic> jsondatais =
        jsonDecode(sharedPreferences.getString('donardata')!);
    Donar donar = Donar.fromJson(jsondatais);

    if (jsondatais.isNotEmpty) {
      myController.value = TextEditingValue(text: donar.amount);
      myController1.value = TextEditingValue(text: donar.name);
      myController2.value = TextEditingValue(text: donar.message);
    }
  }

  void storedata() {
    Donar donar =
        Donar(myController.text, myController1.text, myController2.text);

    String donardata = jsonEncode(donar);
    print(donardata);
    sharedPreferences.setString('donardata', donardata);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  final value = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        titleSpacing: 0,
        title: Row(
          children: [
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: [Colors.black, Colors.amber],
                    begin: Alignment.topRight),
              ),
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage(
                  widget.pic,
                ),
                radius: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: RichText(
                text: TextSpan(
                  text: widget.name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'lib/images/tick.png',
                height: 17,
              ),
            )
          ],
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: "Send your Love to " +
                    widget.name +
                    " to Become a real Fan",
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: TextField(
              controller: myController,
              decoration: InputDecoration(
                hintText: "2000",
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.attach_money,
                        color: Colors.black,
                      ),
                      Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const SizedBox(
                            height: 10,
                            child: Icon(
                              Icons.arrow_drop_up,
                              size: 35,
                            ),
                          ),
                          const Icon(
                            Icons.arrow_drop_down,
                            size: 35,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: TextField(
              controller: myController1,
              decoration: InputDecoration(
                hintText: "Your name (optional)",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: TextField(
                controller: myController2,
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: "Say something nice... (optional)",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 132, 0, 255),
                borderRadius: BorderRadius.circular(40)),
            width: MediaQuery.of(context).size.width / 2,
            child: RawMaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RecordScreen(
                        name: myController1.text,
                        amount: myController.text,
                        message: myController2.text),
                  ),
                );
                storedata();
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  RichText(
                    text: const TextSpan(
                      text: "Support",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.attach_money,
                    color: Colors.white,
                  ),
                  RichText(
                    text: const TextSpan(
                      text: "20",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
