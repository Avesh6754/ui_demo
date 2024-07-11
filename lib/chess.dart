import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chess extends StatefulWidget {
  const Chess({super.key});

  @override
  State<Chess> createState() => _ButtonState();
}

class _ButtonState extends State<Chess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Chess',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 3,shadowColor: Colors.black,
        leading: InkWell(
          onTap: (){
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body:Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black,
            width: 1)

          ),
          child: Column(
            children: [
              Colum1(),
            ],
          ),
        ),

      )
    );
  }
  Widget Colum1(){
   return Row1();

  }

  Container Row2() {
    return Container(
                height: 20,
                width: 20,
                color: Color(0xffF1F1F1),
              );
  }

  Container Row1() {
    return Container(
                height: 20,
                width: 20,
                color: Color(0xff7D93C0),
              );
  }
}

int count = 0;
