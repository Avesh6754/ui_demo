import 'package:flutter/material.dart';
import 'package:ui_demo/Emoji.dart';
import 'package:ui_demo/Mashal.dart';
import 'package:ui_demo/MissionRnw.dart';
import 'package:ui_demo/Mixup.dart';
import 'package:ui_demo/Myapp.dart';
import 'package:ui_demo/Newgradient.dart';
import 'package:ui_demo/OpernDoor.dart';
import 'package:ui_demo/Shadowbutton.dart';
import 'package:ui_demo/chess.dart';
import 'package:ui_demo/flage.dart';
import 'package:ui_demo/lettercover.dart';
import 'package:ui_demo/utils/Cube3d.dart';
import 'package:ui_demo/watch.dart';

import 'Clac.dart';
import 'Counter.dart';
import 'Darkbutton.dart';
import 'Editor.dart';
import 'Gradient.dart';
import 'Icon.dart';
import 'Launch.dart';
import 'Map.dart';
import 'dymainc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/Editor',
      routes: {
        '/': (context) => Myapp(),
        '/Mission': (context) => Missionrnw(),
        '/Mixup': (context) => Mixup(),
        '/Mashal': (context) => Mashal(),
        '/Letter': (context) => Lettercover(),
        '/Cube': (context) => Cube(),
        '/Open': (context) => Operndoor(),
        '/Emoji': (context) => Emoji(),
        '/Gradient': (context) => Gradiet(),
        '/Launch': (context) => Launch(),
        '/Dark': (context) => Darkbutton(),
        '/Shadow': (context) => Shadowbutton(),
        '/Inline': (context) => Inlinegredient(),
        '/Flag': (context) => Flage(),
        '/Watch': (context) => Watch(),
        '/Button': (context) => Button(),
        '/Chess': (context) => Chess(),
        '/Clac': (context) => Clac(),
        '/Map': (context) => Mapdata(),
        '/Icon': (context) => Ioncdata(),
        '/dynamic': (context) => DynamicDart(),
        '/Editor': (context) => Editor(),
      },
    );
  }
}
//
