import 'package:flutter/material.dart';

class Cube extends StatefulWidget {
  const Cube({super.key});

  @override
  State<Cube> createState() => _CubeState();
}

class _CubeState extends State<Cube> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff009688),
        title:const Text(
          '3D Cube',
          style: TextStyle(color: Colors.white),
        ),
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
        elevation: 2
        ,
        shadowColor: Colors.black,
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
        child: GestureDetector(
          onTap: (){
            Navigator.of(context).pushNamed('/Open');
          },
          child: Container(
            height: 270,
            width: 270,
            decoration:const  BoxDecoration(
                color:Color(0xff009688),
                border: Border.symmetric(
                    horizontal:
                    BorderSide(color:Color(0xff4DB6AC), width:40),
                    vertical:
                    BorderSide(color: Color(0xff33ABA0), width: 40))),
          ),
        ),
      ),
    );
  }
}
