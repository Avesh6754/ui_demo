import 'package:flutter/material.dart';


class Wall extends StatefulWidget {
  const Wall({super.key});

  @override
  State<Wall> createState() => _WallState();
}

class _WallState extends State<Wall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF212121),
        centerTitle: true,
        toolbarHeight: 80,
        title: const Text(
          'THE WALL',
          style: TextStyle(
              letterSpacing: 1,
              fontSize: 28,
              color: Colors.white,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: GestureDetector(onTap: (){
          Navigator.of(context).pushNamed('/split');
        },
          child: Column(
            children:
            List.generate(9, (index) => (index % 2 == 0) ? Row1() : Row2()),
          ),
        ),
      ),
    );
  }
}

Widget Row2() {
  return Padding(
    padding: const EdgeInsets.only(top: 10, bottom: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 61,
          width: 100,
          decoration: const BoxDecoration(
            color: Color(0xFF5D4037),
          ),
        ),
        const SizedBox(width: 12),
        Container(
          height: 61,
          width: 100,
          decoration: const BoxDecoration(
            color: Color(0xFF5D4037),
          ),
        ),
        const SizedBox(width: 12),
        Container(
          height: 61,
          width: 120,
          decoration: const BoxDecoration(
            color: Color(0xFF5D4037),
          ),
        ),
      ],
    ),
  );
}

Row Row1() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        height: 61,
        width: 90,
        decoration: const BoxDecoration(
          color: Color(0xFF5D4037),
        ),
      ),
      const SizedBox(width: 12),
      Container(
        height: 61,
        width: 150.4,
        decoration: const BoxDecoration(
          color: Color(0xFF5D4037),
        ),
      ),
      const SizedBox(width: 12),
      Container(
        height: 61,
        width: 90,
        decoration: const BoxDecoration(
          color: Color(0xFF5D4037),
        ),
      ),
    ],
  );
}