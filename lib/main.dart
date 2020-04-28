import 'package:flutter/material.dart';
import 'package:whatsapp/src/mainscreen.dart';
import 'package:camera/camera.dart';
import 'dart:async';

List<CameraDescription> cameras;


Future<Null>  main()  async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: mainscreen(cameras),
      debugShowCheckedModeBanner: false,
    );
  }
}