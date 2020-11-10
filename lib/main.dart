import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sms_maintained/sms.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

_sendingMails() async {
  const url = 'mailto:vleiswal@gmail.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_sendingSMS() async {
  const url = 'sms:+27828546121';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_smsMaintained() {
  SmsSender sender = new SmsSender();
  String address = '+27828546121';

  sender.sendSms(new SmsMessage(address, 'Hello flutter!'));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Geeks for Geeks'),
          backgroundColor: Colors.green,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 200.0,
                ),
                Text(
                  'Welcome to GFG!',
                  style: TextStyle(
                    fontSize: 35.0,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 20.0,
                ),
                Text(
                  'For any Queries, Mail us',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.green,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 10.0,
                ),
                RaisedButton(
                  onPressed: _sendingMails,
                  child: Text('Here'),
                  textColor: Colors.black,
                  padding: const EdgeInsets.all(5.0),
                ),
                Container(
                  height: 20.0,
                ),
                Text(
                  'Or Send SMS',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.green,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 10.0,
                ),
                RaisedButton(
                  onPressed: _smsMaintained,
                  child: Text('Here'),
                  textColor: Colors.black,
                  padding: const EdgeInsets.all(5.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
