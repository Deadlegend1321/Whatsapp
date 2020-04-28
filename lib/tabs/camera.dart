import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class camera extends StatefulWidget {
  List<CameraDescription> cameras;
  camera(this.cameras);
  @override
  _cameraState createState() => _cameraState();
}

class _cameraState extends State<camera> {
  CameraController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new CameraController(widget.cameras[1],ResolutionPreset.medium);
    controller.initialize().then((_) {
      if(!mounted){
        return;
      }
      setState(() {
      });
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
   if (!controller.value.isInitialized){
     return Container();
   }
   return AspectRatio(aspectRatio: controller.value.aspectRatio,
   child: CameraPreview(controller),);
  }
}
