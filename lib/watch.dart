import 'package:flutter/material.dart';

class Watch extends StatefulWidget {
  const Watch({super.key});

  @override
  State<Watch> createState() => _WatchState();
}

class _WatchState extends State<Watch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: const Text('Watch',style: TextStyle(color: Colors.white),),
        backgroundColor:  Color(0xff426FA3),
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
            Navigator.of(context).pushNamed('/Button');
          },
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff434B7A),
                    Color(0xff3E568C),
                    Color(0xff2984D7),
                  ]

              ),),

            alignment: Alignment.center,
            child: Container(
              height:65,
              width: 220,
              decoration: BoxDecoration(

                color:Colors.white,
                border: Border.all(color: Colors.white,width: 0.5),
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                gradient: const LinearGradient(
                    colors: [

                      Color(0xff4C78AC),
                      Color(0xff426FA3),
                    ]
                ),
                boxShadow:const  [
                  BoxShadow(
                      color: Color(0xff3065A5) ,
                      offset: Offset(1,1),
                      spreadRadius: 2,
                      blurRadius: 21
                  )
                ],


              ),
              alignment: Alignment.center,
              child: const Text('Flutter',style: TextStyle(
                  fontSize:25,
                  color:Colors.white
              ),),

            ),

          ),
        ),

      ),
    );



  }
}
