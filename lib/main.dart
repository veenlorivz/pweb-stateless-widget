import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(fontFamily: 'Poppins'),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15.0, 45.0, 15.0, 5.0),
        child: Column(
          children: [
            Row(children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/img/avatar.png"),
                radius: 80.0,
              ),
            ], mainAxisAlignment: MainAxisAlignment.center),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "Rangga Aditya",
              style: TextStyle(
                  color: Colors.grey[300],
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "Flutter Developer",
              style: TextStyle(color: Colors.grey[400], fontSize: 15.0),
            ),
            SizedBox(height: 15.0),
            ProfileList(
              icon: Icon(Icons.phone),
              text: "085770935584",
              fontSize: 20.0,
            ),
            SizedBox(height: 10.0),
            ProfileList(
              icon: Icon(Icons.mail),
              text: "veenlorivz194@gmail.com",
              fontSize: 15.0,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[900],
    );
  }
}

class ProfileList extends StatelessWidget {
  final Widget icon;
  final String text;
  final double fontSize;

  const ProfileList(
      {super.key,
      required this.icon,
      required this.text,
      required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
            child: Row(
              children: [
                icon,
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  text,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: fontSize,
                  ),
                )
              ],
            ),
            color: Colors.grey[300],
            width: 100.0,
            alignment: Alignment.topLeft,
          ),
        )
      ],
    );
  }
}
