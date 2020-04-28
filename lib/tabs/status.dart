import 'package:flutter/material.dart';

class status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context,i)=> Column(
        children: <Widget>[
          Divider(
            height: 10.0,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage("https://www.facebook.com/photo.php?fbid=2223775057728837&set=a.106210259485338&type=3&theater"),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("My Status",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              ],
            ),
            subtitle: Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text("Don't Tap",style: TextStyle(color: Colors.black,fontSize: 15.0),),
            ),
            onTap: (){}
          )
        ],
      ),
    );
  }
}
