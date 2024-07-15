import 'package:flutter/material.dart';
class Shadowbutton extends StatefulWidget {
  const Shadowbutton({super.key});

  @override
  State<Shadowbutton> createState() => _ShadowbuttonState();
}

class _ShadowbuttonState extends State<Shadowbutton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title:const  Text('Dark Shadow Button ',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.red,
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
            Navigator.of(context).pushNamed('/Inline');
          },
          child: Container(
            height: 65,

            width: 220,
            decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.red,width: 1),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                boxShadow:const [BoxShadow(
                  color: Colors.red,
                  offset: Offset(1,2),
                  spreadRadius:2,
                  blurRadius: 22,
                )]
            ),
            alignment: Alignment.center,
            child: const Text('Tap',style: TextStyle(
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
