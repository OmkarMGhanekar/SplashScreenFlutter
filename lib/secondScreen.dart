import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreeen extends StatefulWidget {
  const SecondScreeen({Key? key}) : super(key: key);

  @override
  State<SecondScreeen> createState() => _SecondScreeenState();
}

class _SecondScreeenState extends State<SecondScreeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      // color: Colors.amber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "HELLO",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20),
          )
        ],
      ),
    ));
  }
}
