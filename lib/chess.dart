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
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('/Clac');
          },
          child: Container(
            height: 242,
            width: 242,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black,
              width: 1)

            ),
            child: Column(
              children: [
                Colum2(),
                Colum1(),
                Colum2(),
                Colum1(),
                Colum2(),
                Colum1(),
                Colum2(),
                Colum1(),
              ],
            ),
          ),
        ),
      )
    );
  }
  Widget Colum1(){
    return Row(
      children: [
        Row1(),
        Row2(),
        Row1(),
        Row2(),
        Row1(),
        Row2(),
        Row1(),
        Row2(),
      ],
    );

  }
  Widget Colum2(){
    return Row(
      children: [
        Row2(),
        Row1(),
        Row2(),
        Row1(),
        Row2(),
        Row1(),
        Row2(),
        Row1(),

      ],
    );

  }

  Container Row2() {
    return Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: Color(0xffF1F1F1),
                  border: Border.all(color: Colors.black38,width: 1)
                ),
              );
  }

  Container Row1() {
    return Container(
                height: 30,
                width: 30,
                color: Color(0xff7D93C0),
              );
  }
}

int count = 0;
