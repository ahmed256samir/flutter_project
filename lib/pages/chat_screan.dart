import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/chat_model.dart';
//import 'package:whatsapp/models/Chat_model.dart';

class ChatScrean extends StatefulWidget {
  const ChatScrean({Key? key}) : super(key: key);

  @override
  State<ChatScrean> createState() => _ChatScreanState();
}

class _ChatScreanState extends State<ChatScrean> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, i) => Column(
        children: <Widget>[
          Divider(
            height: 10.0,
          ),
          ListTile(
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: new NetworkImage(dummyData[i].avatarurl),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  dummyData[i].name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  dummyData[i].time,
                  style: TextStyle(color: Colors.grey, fontSize: 14.0),
                ),
              ],
            ),
            subtitle: Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                dummyData[i].message,
                style: TextStyle(color: Colors.grey, fontSize: 15.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
