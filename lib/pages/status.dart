import 'dart:js';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/HeadOwnStatus.dart';
import 'package:flutter_application_1/pages/OtherStatus.dart';

class StatusScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 48,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.blueGrey[100],
              elevation: 8,
              child: Icon(
                Icons.edit,
                color: Colors.blueGrey[900],
              ),
            ),
          ),
          SizedBox(
            height: 13,
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.greenAccent[700],
            elevation: 5,
            child: Icon(Icons.camera_alt),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // SizedBox(height: 10,),
            HeadOwnStatus(),
            label("Recent Update"),
            OtherStatus(
              name: "sabra",
              time: "12:00",
              imageName: "https://i.ytimg.com/vi/TcUNAJR1FQY/maxresdefault.jpg",
            ),
            OtherStatus(
              name: "shoaib",
              time: "10:00",
              imageName: "https://i.ytimg.com/vi/TcUNAJR1FQY/maxresdefault.jpg",
            ),
            OtherStatus(
              name: "nada",
              time: "5:00",
              imageName:
                  "https://tse2.mm.bing.net/th?id=OIP.oCOghCf97MJJZ48EjZUzwQHaNL&pid=Api&P=0&w=95&h=169",
            ),
            OtherStatus(
              name: "mary",
              time: "2:00",
              imageName: "https://i.ytimg.com/vi/TcUNAJR1FQY/maxresdefault.jpg",
            ),
            OtherStatus(
              name: "merna",
              time: "4:00",
              imageName: "https://i.ytimg.com/vi/TcUNAJR1FQY/maxresdefault.jpg",
            ),
            SizedBox(
              height: 10,
            ),
            label("Viewes Updates"),
            OtherStatus(
              name: "sabra",
              time: "12:00",
              imageName: "https://i.ytimg.com/vi/d16mYtyvQV0/maxresdefault.jpg",
            ),
            OtherStatus(
              name: "shoaib",
              time: "10:00",
              imageName: "https://i.ytimg.com/vi/OtOAu6cw6pk/maxresdefault.jpg",
            ),
            OtherStatus(
              name: "nada",
              time: "5:00",
              imageName:
                  "https://tse2.mm.bing.net/th?id=OIP.oCOghCf97MJJZ48EjZUzwQHaNL&pid=Api&P=0&w=95&h=169",
            ),
            OtherStatus(
              name: "mary",
              time: "2:00",
              imageName: "https://i.ytimg.com/vi/KfYa4o_aXV4/hqdefault.jpg",
            ),
            OtherStatus(
              name: "merna",
              time: "4:00",
              imageName: "https://i.ytimg.com/vi/r1QC0jA_Xz4/maxresdefault.jpg",
            ),
          ],
        ),
      ),
    );
  }

  Widget label(String labelname) {
    return Container(
      height: 33,
      // width: MediaQuery.of().size.width,
      color: Colors.green[300],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
        child: Text(
          labelname,
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
