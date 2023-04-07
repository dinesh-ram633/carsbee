import 'dart:async';
import 'package:carsbee_app/signin.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 5),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (ctx) => LoginPage())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(children: [Image.asset("assets/car-wash-2.webp",
              fit: BoxFit.fill,
              height: 718,
              width: 400,),
              //  Positioned(
              //   bottom: 120,
              //   left: 70,
              //   child: Text(
              //     'Carsbee',
              //     style: TextStyle(
              //         color: Color.fromARGB(255, 20, 20, 20),
              //         fontWeight: FontWeight.w700,
              //         fontSize: 75),
              //                ),
              //  ),
              SizedBox(
                height: 20,
              ),
              ]),
             
              // CircularProgressIndicator(
              //   color: Colors.black54,
              // )
            ],
          ),
        ),
      ),
    );
  }
}