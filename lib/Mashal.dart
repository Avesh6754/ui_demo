import 'package:flutter/material.dart';
import 'package:ui_demo/utils/color.dart';
class Mashal extends StatefulWidget {
  const Mashal({super.key});

  @override
  State<Mashal> createState() => _MashalState();
}

class _MashalState extends State<Mashal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.brown.shade400,
        title:const Text(
          'Mashal',
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
        elevation: 3,shadowColor: Colors.black,
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
            Navigator.of(context).pushNamed('/Letter');
          },
          child: Container(
            height: 250,
            width: 120,
            decoration: BoxDecoration(
              color: browncolor,
              border: const Border.symmetric(horizontal: BorderSide(width:23,color: Colors.brown),
                vertical: BorderSide(width:30,color: Colors.white)
                ,),

            ),

            child: const Text('      🔥',style: TextStyle(fontSize:45,height:-0.70),),
          ),
        ),
      ),
    );
  }
}
