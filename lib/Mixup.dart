import 'package:flutter/material.dart';
import 'package:ui_demo/utils/color.dart';

class Mixup extends StatefulWidget {
  const Mixup({super.key});

  @override
  State<Mixup> createState() => _MixupState();
}

class _MixupState extends State<Mixup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: firstcolor,
        elevation: 3,shadowColor: Colors.black,
        title:const Text(
          'Mix-up',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: GestureDetector(
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
            Navigator.of(context).pushNamed('/Mashal');
          },
          child: Container(
            height: 350,
            width: 350,
            color: bluecolor,
            alignment: Alignment.bottomRight,
            child: Container(

              height: 310,
              width: 310,
              color: yellowcolor,
              alignment: Alignment.bottomRight,
              child: Container(
                height: 260,
                width: 260,
                color: pinkcolor,
                alignment: Alignment.topLeft,
                child: Container(
                  height: 220,
                  width: 220,
                  color: oragnecolor,
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 180,
                    width: 180,
                    color: Colors.green,
                    alignment: Alignment.center,
                    child: Container(
                      height: 140,
                      width: 140,
                      color: skycolor,
                    ),
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
