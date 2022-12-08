// ignore_for_file: file_names, prefer_typing_uninitialized_variables, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class DonationScreen extends StatefulWidget {
  const DonationScreen({super.key, this.pic, this.name});

  final pic;
  final name;

  @override
  State<DonationScreen> createState() => _DonationScreenState();
}

class _DonationScreenState extends State<DonationScreen> {
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
              decoration: BoxDecoration(
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
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
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
              obscureText: true,
              decoration: InputDecoration(
                hintText: "2000",
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.attach_money,
                        color: Colors.black,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 10,
                            child: Icon(
                              Icons.arrow_drop_up,
                              size: 35,
                            ),
                          ),
                          Icon(
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
              obscureText: true,
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
                color: Color.fromARGB(255, 132, 0, 255),
                borderRadius: BorderRadius.circular(40)),
            width: MediaQuery.of(context).size.width / 2,
            child: RawMaterialButton(
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Support",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.attach_money,
                    color: Colors.white,
                  ),
                  RichText(
                    text: TextSpan(
                      text: "20",
                      style: const TextStyle(
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
