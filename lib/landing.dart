import 'package:flutter/material.dart';
import 'raifhack_white_page.dart';
import 'password.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5)).then((value) =>
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => PasswordPage()
        ))
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) =>
      RaifhackWhitePage(content: Center(child: Text("RAIFHACK",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: MediaQuery.of(context).size.width / 8,
          )
      )));
}