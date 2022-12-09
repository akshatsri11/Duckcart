// ignore_for_file: prefer_typing_uninitialized_variables, prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class RecordScreen extends StatefulWidget {
  const RecordScreen({super.key, this.name, this.amount, this.message});
  final name;
  final amount;
  final message;
  @override
  State<RecordScreen> createState() => _RecordScreenState();
}

class _RecordScreenState extends State<RecordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Color.fromARGB(255, 132, 0, 255),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 5),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Donars',
                  style: TextStyle(color: Colors.white, fontSize: 70),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Table(
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                border: TableBorder.all(color: Colors.white),
                children: [
                  TableRow(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Creator id',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                      Center(
                          child: Text('Curency',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 15))),
                      Center(
                          child: Text('Amount',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 15))),
                      Center(
                          child: Text('Name',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 15))),
                      Center(
                          child: Text('Message',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 15))),
                    ],
                  ),
                  TableRow(
                    children: [
                      Center(
                          child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('BB ki Vines',
                            style: TextStyle(color: Colors.white)),
                      )),
                      Center(
                        child: Icon(
                          Icons.attach_money,
                          size: 15,
                          color: Colors.white,
                        ),
                      ),
                      Center(
                          child: Text(widget.amount,
                              style: TextStyle(color: Colors.white))),
                      Center(
                          child: Text(widget.name,
                              style: TextStyle(color: Colors.white))),
                      Center(
                          child: Text(widget.message,
                              style: TextStyle(color: Colors.white))),
                    ],
                  ),
                  TableRow(
                    children: [
                      Center(
                          child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('Carryminati',
                            style: TextStyle(color: Colors.white)),
                      )),
                      Center(
                        child: Icon(
                          Icons.attach_money,
                          size: 15,
                          color: Colors.white,
                        ),
                      ),
                      Center(
                          child: Text(widget.amount,
                              style: TextStyle(color: Colors.white))),
                      Center(
                          child: Text(widget.name,
                              style: TextStyle(color: Colors.white))),
                      Center(
                          child: Text(widget.message,
                              style: TextStyle(color: Colors.white))),
                    ],
                  ),
                  TableRow(
                    children: [
                      Center(
                          child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('PewDiePie',
                            style: TextStyle(color: Colors.white)),
                      )),
                      Center(
                        child: Icon(
                          Icons.attach_money,
                          size: 15,
                          color: Colors.white,
                        ),
                      ),
                      Center(
                          child: Text(widget.amount,
                              style: TextStyle(color: Colors.white))),
                      Center(
                          child: Text(widget.name,
                              style: TextStyle(color: Colors.white))),
                      Center(
                          child: Text(widget.message,
                              style: TextStyle(color: Colors.white))),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
