import 'package:flutter/material.dart';

class Launch extends StatefulWidget {
  const Launch({super.key});

  @override
  State<Launch> createState() => _LaunchState();
}

class _LaunchState extends State<Launch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Launch Button',
          style: TextStyle(color: Colors.white),
        ),

        centerTitle: true,
        backgroundColor: Colors.green,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Align(
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: () {
            print("Hello World");
            Navigator.of(context).pushNamed('/Dark');
          },
          child: Container(
            height: 220,
            width: 220,
            decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.white, width: 1),
                shape: BoxShape.circle,
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xff0D7309),
                    offset: Offset(0, 0),
                    spreadRadius: 12,
                    blurRadius: 22,
                  )
                ]),
            alignment: Alignment.center,
            child: const Text(
              'GO',
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
