import 'package:flutter/material.dart';
import 'package:ui_demo/utils/color.dart';

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: const Text(
          'My App',
          style: TextStyle(color: Colors.white),

        ),
        centerTitle: true,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        elevation: 3,shadowColor: Colors.black,

        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          )

        ],
      ),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          alignment: Alignment.center,
          height: 250,
          width: 250,
          color: const Color(0xff4CAF50),
          child: Center(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/Mission');
              },
              child: Container(
                alignment: Alignment.center,
                height: 200,
                width: 200,
                color: Colors.lightGreen,
                child: const Text(
                  'oooo',
                  style: TextStyle(
                    fontSize: 120,
                    letterSpacing: -35,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
