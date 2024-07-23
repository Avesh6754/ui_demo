

import 'package:flutter/material.dart';

class Bolt extends StatefulWidget {
  const Bolt({super.key});

  @override
  State<Bolt> createState() => _BoltState();
}

class _BoltState extends State<Bolt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Color(0xFF212121),
        centerTitle: true,
        toolbarHeight: 80,
        title: const Text(
          'BOLT',
          style: TextStyle(
            letterSpacing: 10,
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
      body: GestureDetector(onTap: (){
        Navigator.of(context).pushNamed('/wall');
      },
        child: Align(
          alignment: Alignment.center,
          child: Expanded(
            child: Container(
              width: 90,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Color(0xFF212121),
              ),
              child: const Text(
                '⚡',
                style: TextStyle(fontSize: 65),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
