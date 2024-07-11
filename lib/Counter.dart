import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          'Counter App',
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Click on bottom add to increase value ",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),

          Text(
            "$count",
            style: TextStyle(fontSize: 50),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                count--;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.red.shade100,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                spreadRadius: 0.4,
                                blurRadius: 5)
                          ]),
                      child: Icon(
                        Icons.remove,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          count = 0;
                        });
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.red.shade100,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black26,
                                  spreadRadius: 0.4,
                                  blurRadius: 5)
                            ]),
                        child: Icon(
                          Icons.restart_alt,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          count++;
                        });
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.red.shade100,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black26,
                                  spreadRadius: 0.4,
                                  blurRadius: 5)
                            ]),
                        child: Icon(
                          Icons.add,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/Chess');
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue.shade100,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              spreadRadius: 0.4,
                              blurRadius: 5)
                        ]),
                    child: Icon(
                      Icons.navigate_next_outlined,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

int count = 0;
