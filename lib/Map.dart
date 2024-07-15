import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_demo/utils/global.dart';

import 'Clac.dart';

class Mapdata extends StatefulWidget {
  const Mapdata({super.key});

  @override
  State<Mapdata> createState() => _MapdataState();
}

class _MapdataState extends State<Mapdata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEEEEEE),
      appBar: AppBar(
        title: const Text(
          'Map',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 3,shadowColor: Colors.black54,
        centerTitle: true,
      ),
      body: SingleChildScrollView(

        child: Column(
          children: [
            ...List.generate(teat1.length, (index)=>Clounm(Name: teat1[index]['Name'],id:teat1[index]['Icon'] ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/Icon');
        },
        child: const Icon(Icons.navigate_next_outlined),
      ),
    );
  }

  Column Clounm({required String Name,required var id}) {
    return Column(
            children: [
              const SizedBox(height: 15,),
              Container(
                height: 80,
                width: double.infinity,
                color: const Color(0xffFFFFFF),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 20),

                      child: Text("$Name",style: const TextStyle(fontSize: 25,),),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Icon(id,size: 25,),
                    ),
                  ],
                ),
              ),

            ],
          );
  }
}
