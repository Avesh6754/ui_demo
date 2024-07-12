import 'package:flutter/material.dart';

class Clac extends StatefulWidget {
  const Clac({super.key});

  @override
  State<Clac> createState() => _ClacState();
}

class _ClacState extends State<Clac> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Clac',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff54759E),
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
            child: Icon(
          Icons.arrow_back,
          color: Colors.white,
        )),
        elevation: 3,shadowColor: Colors.black54,
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 150,),
          Align(alignment:Alignment.center,child: Text("$count",style:TextStyle(fontSize: 60,color: Colors.grey),)),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              GestureDetector(
                onTap: () {
                  setState(() {
                    count-=2;
                  });
                },
                child: Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Color(0xff54759E),
                    borderRadius: BorderRadius.circular(10),boxShadow: [BoxShadow(color: Colors.black38,blurRadius: 4)]
                  ),
                  alignment: Alignment.center,
                  child: Text('-2',style: TextStyle(fontSize: 25,color: Colors.white),),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    count+=2;
                  });
                },
                child: Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Color(0xff54759E),
                      borderRadius: BorderRadius.circular(10),boxShadow: [BoxShadow(color: Colors.black38,blurRadius: 4)]
                  ),
                  alignment: Alignment.center,
                  child: Text('+2',style: TextStyle(fontSize: 25,color: Colors.white),),
                ),
              )
            ],
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              GestureDetector(
                onTap:  () {
                  setState(() {
                    count-=4;
                  });
                },
                child: Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Color(0xff54759E),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(color: Colors.black38,blurRadius: 4)]
                  ),
                  alignment: Alignment.center,
                  child: Text('-4',style: TextStyle(fontSize: 25,color: Colors.white),),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    count+=4;
                  });
                },
                child: Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Color(0xff54759E),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(color: Colors.black38,blurRadius: 4)]
                  ),
                  alignment: Alignment.center,
                  child: Text('+4',style: TextStyle(fontSize: 25,color: Colors.white),),
                ),
              )
            ],
          ),
          SizedBox(height: 30,),
          GestureDetector(
            onTap: () {
              setState(() {
                count=0;
              });
            },
            child: Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                  color: Color(0xff54759E),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(color: Colors.black38,blurRadius: 4)]
              ),
              alignment: Alignment.center,
              child: Text('Clear',style: TextStyle(fontSize: 25,color: Colors.white),),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/Map');
        },
        child: Icon(Icons.navigate_next_outlined),
      ),
    );
  }
}
int count =0;
