import 'package:flutter/material.dart';

class Gradiet extends StatefulWidget {
  const Gradiet({super.key});

  @override
  State<Gradiet> createState() => _GradietState();
}

class _GradietState extends State<Gradiet> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My App',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.pink,
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
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
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
            print("Hello World");
            Navigator.of(context).pushNamed('/Launch');
          },
          child: Container(
            height: 50,
            width: 150,
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xffD64D92),
                  // Color(0xffF9407E),
                  Color(0xffFF4F6A),
                ]),
                boxShadow: [
                  BoxShadow(
                      color: Colors.pink,
                      offset: Offset(-4, 10),
                      spreadRadius: 2,
                      blurRadius: 50)
                ],
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: Colors.pink),
            alignment: Alignment.center,
            child: const Text(
              'Call to action',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
