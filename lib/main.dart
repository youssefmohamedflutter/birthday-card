// main Function => Is The Entry Point Of Any Program
import 'package:flutter/material.dart';

void main() {
  // It's The Point To Run A Program
  runApp(MyApp());
}

// Two Main Types of Widgets in Flutter
/*
1- Stateless Widget => don't contain State because data is a static بستخدمها لما البانات تكون ثابته
2-StatefulWidget => have a state because data is changes بستخدمها في حاله ان البانات متغيره
 */
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //MaterialApp => هي المسئوله عن اعداد التطبيق باستخدام MaterialDesign And it's Available Theme,Navigator
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //Scaffold => هي المسئوله عن تقسيم هيكل الشاشه وتحتوي علي AppBar, BottomNavigationBar,FloatingActionButton
      home: Scaffold(
        //SafeArea => المنطقه الامنه
        //Stack => Use it we i need احط Widget فوق بعض
        body: SafeArea(
          child: Stack(
            children: [
              Image(
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
                image: AssetImage('assets/images/brithday_image.jpg'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      'Happy Birthday\nYoussef',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Image(
                    width: 200,
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/text.png'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
