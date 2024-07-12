import 'package:flutter/material.dart';
import 'package:ui_demo/utils/global.dart';

class Ioncdata extends StatefulWidget {
  const Ioncdata({super.key});

  @override
  State<Ioncdata> createState() => _IoncdataState();
}

class _IoncdataState extends State<Ioncdata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEEEEE),
      appBar: AppBar(
        title: Text(
          'Icons',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xffFFFFFF),
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        elevation: 3,shadowColor: Colors.black54,
        centerTitle: true,
      ),
      body: SingleChildScrollView(

        child: Column(
          children: [
            SizedBox(height:8,),
           SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             child: Row(
               children: [

                 ...List.generate(teat.length, (index)=>RowContainer(id: teat[index]))

               ],
             ),
           )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/Icon');
        },
        child: Icon(Icons.navigate_next_outlined),
      ),
    );
  }

  Container RowContainer({required var id}) {
    return Container(
                    margin: EdgeInsets.only(left:5),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Color(0xffF5F5F5),borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 3,
                          blurRadius: 3
                        )
                      ]
                    ),
      child: Icon(id,color: Colors.grey,),
                  );
  }
}
