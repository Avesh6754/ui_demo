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
      backgroundColor: const Color(0xffFEFEFE),
      appBar: AppBar(
        title: const Text(
          'Icons',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color(0xffFFFFFF),
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        elevation: 3,shadowColor: Colors.black54,
        centerTitle: true,
      ),
      body: SingleChildScrollView(

        child: Column(
          children: [
            const SizedBox(height:8,),
           SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             child: Row(
               children: [

                 ...List.generate(5, (index)=>RowContainer(id: teat[index]))

               ],
             ),

           ),
            const SizedBox(height:5 ,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [

                  ...List.generate(4, (index)=>RowContainer(id: teat[5+index]))

                ],
              ),
            ),

            const SizedBox(height:5 ,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [

                  ...List.generate(3, (index)=>RowContainer(id: teat[9+index]))

                ],
              ),
            ),
            const SizedBox(height:5 ,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [

                  ...List.generate(5, (index)=>RowContainer(id: teat[12+index]))

                ],
              ),
            ),
            const SizedBox(height:5 ,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [

                  ...List.generate(3, (index)=>RowContainer(id: teat[15+index]))

                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/dynamic');
        },
        child: const Icon(Icons.navigate_next_outlined),
      ),
    );

  }

  Container RowContainer({required var id}) {
    return Container(
                    margin: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                    height: 160,
                    width: 160,
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F5F5),borderRadius: BorderRadius.circular(10)

                    ),
      child: Icon(id,color: Colors.grey,size: 35,),
                  );
  }
}
