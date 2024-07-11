import 'package:flutter/material.dart';
class Inlinegredient extends StatefulWidget {
  const Inlinegredient({super.key});

  @override
  State<Inlinegredient> createState() => _InlinegredientState();
}

class _InlinegredientState extends State<Inlinegredient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff48416A),
      appBar: AppBar(

        title:const  Text('Gredient Button ',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: const Color(0xff48416A),
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
            Navigator.of(context).pushNamed('/Flag');
          },
          child: Container(
            height: 65,
            width: 220,
            decoration: BoxDecoration(
              gradient:const  LinearGradient(
                  colors: [
                    Color(0xff873ABB),
                    Color(0xff615CD0),
                    Color(0xff298EEE),
                  ]
              ),
              border: Border.all(color: Colors.white,width: 1),
              borderRadius:const  BorderRadius.all(Radius.circular(50)),

            ),
            alignment: Alignment.center,
            child: const Text('Flutter',style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold

            ),),

          ),
        ),

      ),
    );
  }
}
