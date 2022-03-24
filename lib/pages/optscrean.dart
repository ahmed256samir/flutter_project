import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/WhatsApp_Home.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
// import 'package:whatsapp/pages/LoginPage.dart';

class otpscrean extends StatefulWidget {
  const otpscrean({Key? key, required this.countrycode, required this.number})
      : super(key: key);
  final String number;
  final String countrycode;

  @override
  _otpscreanState createState() => _otpscreanState();
}

class _otpscreanState extends State<otpscrean> {
  var countrycode;

  @override
  Widget build(BuildContext context) {
    var number;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Verify +$countrycode $number",
          style: TextStyle(
            color: Colors.teal[800],
            fontSize: 16.5,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "We have sent an sms with a code to ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.5,
                    ),
                  ),
                  TextSpan(
                    text: "+$countrycode $number",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "Wrong number?",
                    style: TextStyle(
                      color: Colors.cyan[800],
                      fontSize: 14.5,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            OTPTextField(
              length: 6,
              width: MediaQuery.of(context).size.width,
              fieldWidth: 30,
              style: TextStyle(fontSize: 17),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.underline,
              onCompleted: (pin) {
                print("Completed: " + pin);
              },
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Enter 6-digit code",
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            bottomButton(
              "Resend sms",
              Icons.message,
            ),
            SizedBox(
              height: 12,
            ),
            Divider(
              thickness: 1.5,
            ),
            SizedBox(
              height: 12,
            ),
            bottomButton("Call me", Icons.call),
            TextButton(
              style: ButtonStyle(
                foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.greenAccent),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WhatsAppHome()),
                );
              },
              child: Text("Next", style: TextStyle(color: Colors.green[300])),
            )
          ],
        ),
      ),
    );
  }

  Widget bottomButton(String text, IconData icon) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.teal,
          size: 24,
        ),
        SizedBox(
          width: 25,
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.teal,
            fontSize: 14.5,
          ),
        )
      ],
    );
  }
}
