import 'package:flutter/material.dart';
class Darkbutton extends StatefulWidget {
  const Darkbutton({super.key});

  @override
  State<Darkbutton> createState() => _DarkbuttonState();
}

class _DarkbuttonState extends State<Darkbutton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('A Shadow Button ',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Color(0xff009688),
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        elevation: 3,shadowColor: Colors.black,
        actions:const  [Padding(padding:EdgeInsets.only(right: 20),
          child: Icon(Icons.search,color: Colors.white,),
        )],
      )  ,
      body: Align(

        alignment: Alignment.center,
        child:GestureDetector(
          onTap: (){
            print("Hello World");
            Navigator.of(context).pushNamed('/Shadow');
          },
          child: Container(
            height: 80,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Color(0xff009688),width: 1),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow:const [BoxShadow(
                  color: Color(0xff009688),
                  offset: Offset(1,2),
                  spreadRadius:2,
                  blurRadius: 22,
                )]
            ),
            alignment: Alignment.center,
            child: const Text('Tap',style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold

            ),),

          ),
        ),

      ),
    );
  }
}
