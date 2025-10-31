import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portofolio',
      theme: ThemeData(),
      home: const Homescreen(),
    );
  }
}

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 83),
              child: Image(
                image: AssetImage("assets/image/person.png"),
                width: 180,
                height: 180,
              ),
            ),
            SizedBox(height: 34),

            Text(
              "Hi, I am John, \n Creative \n Technologist",
              textAlign: TextAlign.center,
              style: TextStyle(
                //   fontStyle: FontStyle.,
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: Color(0xFF21243D),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(
                "Amet minim mollit non deserunt ullamco est \n sit aliqua "
                "dolor do amet sint. Velit officia \n consequat duis "
                "enim velit mollit. Exercitation \n veniam consequat "
                "sunt nostrud amet.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xFF21243D),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 214),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFF6464),
                  foregroundColor: Colors.white,
                  //this in the content of button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                  padding: EdgeInsets.zero,
                  fixedSize: Size(208, 48), //size on buttom
                ),
                child: Text(
                  "Download Resume",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
