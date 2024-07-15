import 'package:flutter/material.dart';
import 'package:ui_demo/utils/color.dart';

class Missionrnw extends StatefulWidget {
  const Missionrnw({super.key});

  @override
  State<Missionrnw> createState() => _MissionrnwState();
}

class _MissionrnwState extends State<Missionrnw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: firstcolor,

        title:const Text(
          'Mission of RNW',

          style: TextStyle(color: Colors.white),
        ),
        elevation: 3,shadowColor: Colors.black,
        centerTitle: true,
        leading: InkWell(
          onTap: (){
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        actions:const  [
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
        child: GestureDetector(
          onTap: (){
            Navigator.of(context).pushNamed('/Mixup');
          },
          child: Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                  border:const BorderDirectional(
                      start: BorderSide(color: Colors.red, width: 10)),
                  color: Colors.red.shade100),
              alignment: Alignment.centerLeft,
              child: const Text.rich(TextSpan(
                children: [
                  TextSpan(
                      text: ' Shaping "skills" for "scalling" higher\n',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16)),
                  TextSpan(
                      text: '  -RNW',
                      style: TextStyle(
                        fontSize: 25,
                      ))
                ],
              ))),
        ),
      ),
    );
  }
}

