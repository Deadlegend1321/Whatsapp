import 'package:flutter/material.dart';
import 'package:whatsapp/tabs/calls.dart';
import 'package:whatsapp/tabs/camera.dart';
import 'package:whatsapp/tabs/chat.dart';
import 'package:whatsapp/tabs/status.dart';

class mainscreen extends StatefulWidget {
  var cameras;
  mainscreen(this.cameras);
  @override
  _mainscreenState createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 4, vsync: this ,initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Whatsapp'),
        elevation: 0.7,
        bottom: new TabBar(tabs: <Widget>[
          Tab(icon: new Icon(Icons.camera_alt)),
          Tab(text: "CHATS"),
          Tab(text: "STATUS"),
          Tab(text: "CALLS")
        ],
          controller: _tabController,
          indicatorColor: Colors.white,),
        actions: <Widget>[new Icon(Icons.search),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0)),
          new Icon(Icons.more_vert)],
      ),
      body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            camera(widget.cameras),
            chats(),
            status(),
            calls()
          ]),
      floatingActionButton: FloatingActionButton(onPressed: () => print("jcdcg"),
        backgroundColor: Colors.indigo,
        child: new Icon(Icons.message),
      ),
    );
  }
}
