import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/countrymodel.dart';
import 'package:flutter_application_1/pages/countrypage.dart';
import 'package:flutter_application_1/pages/optscrean.dart';
// import 'package:whatsapp/WhatsApp_Home.dart';
// import 'package:whatsapp/models/CountryModel.dart';
// import 'package:whatsapp/pages/countrypage.dart';
// import 'package:whatsapp/pages/otpscrean.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPagestate createState() => _LoginPagestate();
}

class _LoginPagestate extends State<LoginPage> {
  String countryname = "India";
  String countrycode = "+91";
  TextEditingController __controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Enter your phone number",
          style: TextStyle(
              color: Colors.teal,
              fontWeight: FontWeight.w700,
              fontSize: 18,
              wordSpacing: 1),
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Text(
              "Whatsapp will send an sms message to verfiy your number",
              style: TextStyle(
                fontSize: 13.5,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "what is my number ?",
              style: TextStyle(fontSize: 12.8, color: Colors.cyan[800]),
            ),
            SizedBox(
              height: 5,
            ),
            countryCard(),
            SizedBox(
              height: 5,
            ),
            number(),
            Expanded(child: Container()),
            InkWell(
              onTap: () {
                if (__controller.text.length < 10) {
                  showMydialog1();
                } else {
                  showMydialog();
                }
              },
              child: Container(
                color: Colors.tealAccent[400],
                height: 40,
                width: 70,
                child: Center(
                  child: Text(
                    "Next",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }

  Widget countryCard() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (builder) => countryPage(
                      setcountryData: setcountryData,
                    )));
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 1.5,
        padding: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.teal,
              width: 1.8,
            ),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    countryname,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.teal,
              size: 28,
            ),
          ],
        ),
      ),
    );
  }

  Widget number() {
    return Container(
      width: MediaQuery.of(context).size.width / 1.5,
      height: 38,
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Container(
            width: 70,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.teal,
                  width: 1.8,
                ),
              ),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "+",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  countrycode.substring(1),
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.teal,
                  width: 1.6,
                ),
              ),
            ),
            width: MediaQuery.of(context).size.width / 1.5 - 100,
            child: TextFormField(
              controller: __controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(15),
                hintText: "phone number",
              ),
            ),
          ),
        ],
      ),
    );
  }

  void setcountryData(CountryModel countryModel) {
    setState(() {
      countryname = countryModel.name;
      countrycode = countryModel.code;
    });
    Navigator.pop(context);
  }

  Future<void> showMydialog() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "we will be verify your phone number",
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    countrycode + " " + __controller.text,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "is this ok, or would you like to edit the number?",
                    style: TextStyle(fontSize: 13.5),
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Edit"),
              ),
              TextButton(
                child: Text("ok"),
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (Builder) => otpscrean(
                                countrycode: countrycode,
                                number: __controller.text,
                              )));
                },
              ),
            ],
          );
        });
  }

  Future<void> showMydialog1() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "there is no number you entered ",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("ok")),
            ],
          );
        });
  }
}
