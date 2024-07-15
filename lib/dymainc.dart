import 'dart:ui';

import 'package:flutter/material.dart';

class DynamicDart extends StatefulWidget {
  const DynamicDart({super.key});

  @override
  State<DynamicDart> createState() => _DynamicDartState();
}

class _DynamicDartState extends State<DynamicDart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEFEFE),
      appBar: AppBar(
        title: const Text(
          'Dynamic List ',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xff244D61),
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/Editor');

            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.navigate_next_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
          )
        ],
        elevation: 3,
        shadowColor: Colors.black54,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(
                Number.length,
                (index) => Method(
                    index: index,
                    col: (index % 2 == 0)
                        ? (Colors.blue)
                        : (Colors.lightBlueAccent)))
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                Number.add(Method);
              });
            },
            child: Container(
              margin:const EdgeInsets.only(right: 10),
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xff244D61)),
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Number.remove(Method);
              });
            },
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xff244D61)),
              child: const Icon(
                Icons.remove,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }

  List Number = [];

  Container Method({required var index, required Color col}) {
    return Container(
      margin:const  EdgeInsets.fromLTRB(10, 10, 10, 0),
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: col,
        borderRadius: BorderRadius.circular(15),
      ),
      alignment: Alignment.center,
      child: Text(
        "${index + 1}",
        style: TextStyle(fontSize: 50, color: Colors.white),
      ),
    );
  }
}
