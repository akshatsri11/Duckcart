// ignore_for_file: file_names, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:tiobu/Screen2.dart';

const myGradient = [
  LinearGradient(colors: [Colors.black, Colors.red], begin: Alignment.topRight),
  LinearGradient(
      colors: [Colors.black, Colors.purple], begin: Alignment.topRight),
  LinearGradient(
      colors: [Colors.black, Colors.amber], begin: Alignment.topRight),
  LinearGradient(colors: [Colors.black, Colors.red], begin: Alignment.topRight),
  LinearGradient(colors: [Colors.black, Colors.red], begin: Alignment.topRight),
  LinearGradient(
      colors: [Colors.black, Colors.purple], begin: Alignment.topRight),
  LinearGradient(
      colors: [Colors.black, Colors.amber], begin: Alignment.topRight),
  LinearGradient(colors: [Colors.black, Colors.red], begin: Alignment.topRight),
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'lib/images/icon.png',
              height: 30,
            ),
            Text(
              " T I O B U",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
          ],
        ),
        backgroundColor: Colors.purple[900],
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                'lib/images/man.png',
              ),
              radius: 17,
            ),
          )
        ],
      ),
      drawer: Drawer(),
      body: MyGrid(),
    );
  }
}

final pics = [
  "lib/images/BB.png",
  "lib/images/CM.png",
  "lib/images/PDP.jpg",
  "lib/images/BB2.jpg",
  "lib/images/BB.png",
  "lib/images/CM.png",
  "lib/images/PDP.jpg",
  "lib/images/BB2.jpg",
];

final names = [
  "BB ki Vines",
  "Carrryminati",
  "PewDiePie",
  "BB ki Vines",
  "BB ki Vines",
  "Carrryminati",
  "PewDiePie",
  "BB ki Vines",
];

final des = [
  "Youtuber",
  "Youtuber",
  "Musican",
  "Actor",
  "Youtuber",
  "Youtuber",
  "Musican",
  "Actor"
];

class MyGrid extends StatefulWidget {
  const MyGrid({super.key});

  @override
  State<MyGrid> createState() => _MyGridState();
}

class _MyGridState extends State<MyGrid> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: RichText(
                text: TextSpan(
                    text: "Recommendated Creators",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.black))),
          ),
          SizedBox(
            height: 20,
          ),
          Flexible(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 13 / 12,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 5),
              itemCount: 8,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DonationScreen(
                          pic: pics[index],
                          name: names[index],
                        ),
                      ),
                    );
                  },
                  child: Column(children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(pics[index]),
                          ),
                          gradient: myGradient[index]),
                      height: MediaQuery.of(context).size.height / 7.5,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 25,
                      width: MediaQuery.of(context).size.width / 2.4,
                      child: Stack(children: [
                        RichText(
                            text: TextSpan(
                                text: names[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Colors.black))),
                        Positioned(
                          top: 5,
                          right: 0,
                          child: Icon(
                            Icons.favorite_border_rounded,
                            size: 22,
                            color: Colors.grey,
                          ),
                        ),
                        Positioned(
                          top: 17,
                          child: Text(
                            des[index],
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                        ),
                      ]),
                    ),
                  ]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// Container(
        //   child: Text(
        //     "Recommendated Creators",
        //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        //   ),
        // ),

        // GridView.builder(
      //  Column(
      //       children: [
      //         Container(
                
      //         ),
              
      //             ],
      //           ),
      //         )
      //       ],
      //     ),