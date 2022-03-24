import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/calls_screan.dart';
import 'package:flutter_application_1/pages/camera_screan.dart';
import 'package:flutter_application_1/pages/chat_screan.dart';
import 'package:flutter_application_1/pages/status.dart';

class WhatsAppHome extends StatefulWidget {
  const WhatsAppHome({Key? key}) : super(key: key);

  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState

    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        title: Text("WhatsApp"),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "Chats",
            ),
            Tab(
              text: "Status",
            ),
            Tab(
              text: "Calls",
            ),
          ],
        ),
        actions: <Widget>[
          new Icon(Icons.search),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0)),
          new Icon(Icons.more_vert),
        ],
      ),
      body: TabBarView(controller: _tabController, children: <Widget>[
        CameraScrean(),
        ChatScrean(),
        StatusScrean(),
        CallScrean(),
      ]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () => print("open Chats"),
      ),
    );
  }
}
