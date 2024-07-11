import 'package:flutter/material.dart';
class Lettercover extends StatefulWidget {
  const Lettercover({super.key});

  @override
  State<Lettercover> createState() => _LettercoverState();
}

class _LettercoverState extends State<Lettercover> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title:const Text(
          'Letter Cover',
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
        elevation: 3,shadowColor: Colors.black,
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
          onTap: () {
            Navigator.of(context).pushNamed('/Cube');
          },
          child: Container(
            height: 270,
            width: 270,
            decoration:const  BoxDecoration(
                color: Colors.green,
                border: Border.symmetric(
                    horizontal:
                    BorderSide(color: Color(0xff72C075), width: 120),
                    vertical:
                    BorderSide(color: Colors.green, width: 120))),
          ),
        ),
      ),
    );
  }
}
