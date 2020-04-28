import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_model.dart';

class chats extends StatefulWidget {
  @override
  _chatsState createState() => _chatsState();
}

class _chatsState extends State<chats> {
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
                Text(dummyData[i].time,style: TextStyle(color: Colors.blue,fontSize: 14.0),)
              ],
            ),
            subtitle: Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(dummyData[i].msg,style: TextStyle(color: Colors.black,fontSize: 15.0),),
            ),
          )
        ],
      ),
    );
  }
}
