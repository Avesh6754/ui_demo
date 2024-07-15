import 'package:flutter/material.dart';

class Operndoor extends StatefulWidget {
  const Operndoor({super.key});

  @override
  State<Operndoor> createState() => _CubeState();
}

class _CubeState extends State<Operndoor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black,
        title:const Text(
          'Opened Doors',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(

            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        elevation: 3,
        shadowColor: Colors.black,
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
            Navigator.of(context).pushNamed('/Emoji');
          },
          child: Container(
            height: 250,
            width: 250,
            decoration:const  BoxDecoration(
              color: Colors.black,
              border: Border.symmetric(
                vertical: BorderSide(width:80,color: Colors.white),
                horizontal: BorderSide(width: 50,color: Colors.black)
                ,),

            ),
          ),
        ),
      ),
    );
  }
}