import 'package:flutter/material.dart';
import 'package:whatsapp/models/call_model.dart';

class calls extends StatefulWidget {
  @override
  _callsState createState() => _callsState();
}

class _callsState extends State<calls> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context,i)=> Column(
        children: <Widget>[
          Divider(
            height: 10.0,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(dummyData[i].avurl),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(dummyData[i].name,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                new Icon(Icons.video_call,color: Colors.blue ,)
              ],
            ),
            subtitle: Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(dummyData[i].msg,style: TextStyle(color: Colors.black,fontSize: 15.0),),
            ),
            onTap: () {
            },
          )
        ],
      ),
    );
  }
}
