import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_demo/utils/global.dart';

class Editor extends StatefulWidget {
  const Editor({super.key});

  @override
  State<Editor> createState() => _EditorState();
}

class _EditorState extends State<Editor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Icons Editor',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        elevation: 3,
        shadowColor: Colors.black54,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(15, 30, 15, 0),
            height: 350,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12, spreadRadius: 2, blurRadius: 2)
                ]),
            child: Icon(
              data,
              size: 150,
              color: colordata,
            ),
          ),
          Select("Select Color"),
          Container(
              margin: const EdgeInsets.fromLTRB(20, 30, 20, 0),
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12, spreadRadius: 2, blurRadius: 2)
                  ]),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                        SelectColor.length,
                        (index) => GestureDetector(
                            onTap: () {
                              setState(() {
                                colordata = SelectColor[index];
                              });
                            },
                            child: SelectedColor(col: SelectColor[index])))
                  ],
                ),
              )),
          Select('Select Icon'),
          Container(
              margin: const EdgeInsets.fromLTRB(15, 30, 15, 0),
              height: 100,
              width: 500,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12, spreadRadius: 2, blurRadius: 2)
                  ]),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                        teat.length,
                        (index) => GestureDetector(
                            onTap: () {
                              setState(() {
                                data = teat[index];
                              });
                            },
                            child: SelectedIcons(id: teat[index])))
                  ],
                ),
              )),
        ],
      ),
    );
  }

  Container SelectedIcons({required IconData id}) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      height: double.infinity,
      width: 80,
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(color: Colors.black12, spreadRadius: 2, blurRadius: 2)
      ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Icon(
        id,
        color: Colors.blue,
        size: 40,
      ),
    );
  }

  Container Select(String Name) {
    return Container(
        margin: const EdgeInsets.fromLTRB(15, 30, 15, 0),
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(color: Colors.black12, spreadRadius: 2, blurRadius: 2)
            ]),
        alignment: Alignment.center,
        child: Text(
          "   $Name",
          style: const TextStyle(fontSize: 25),

        ));
  }

  Container SelectedColor({required Color col}) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      height: double.infinity,
      width: 80,
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(color: Colors.black12, spreadRadius: 2, blurRadius: 2)
      ], color: col, borderRadius: BorderRadius.circular(15)),
    );
  }
}

Color colordata = Colors.black12;
var data;
