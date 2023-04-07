
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carsbee_app/one.dart';
import 'package:carsbee_app/six.dart';
import 'package:carsbee_app/three.dart';
import 'package:carsbee_app/twelve.dart';
import 'package:flutter/material.dart';




class slider1widget extends StatefulWidget {
  const slider1widget({
    Key? key,
  }) : super(key: key);

  @override
  State<slider1widget> createState() => _slider1widgetState();
}

class _slider1widgetState extends State<slider1widget> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
    items: [
      GestureDetector(
        onTap: () {
          Navigator.push(context,MaterialPageRoute(builder: (context) => OneMonth(),));
        },
        child: Container(
          width: 260,
          padding: EdgeInsets.only(left: 10, bottom: 24),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            image: DecorationImage(
              image: AssetImage('assets/1.png'),
              fit: BoxFit.cover)
          ),
        ),
      ),
      
      GestureDetector(
        onTap: () {
          Navigator.push(context,MaterialPageRoute(builder: (context) => ThreeMonth(),));
        },
        child: Container(
          width: 260,
          padding: EdgeInsets.only(left: 20, bottom: 24),
          margin: EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            image: DecorationImage(
              image: AssetImage('assets/3.png'),
              fit: BoxFit.cover)
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(context,MaterialPageRoute(builder: (context) => SixMonth(),));
        },
        child: Container(
          width: 260,
          padding: EdgeInsets.only(left: 20, bottom: 24),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            image: DecorationImage(
              image: AssetImage('assets/6.png'),
              fit: BoxFit.cover)
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(context,MaterialPageRoute(builder: (context) => TwelveMonth(),));
        },
        child: Container(
          width: 260,
          padding: EdgeInsets.only(left: 20, bottom: 24),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            image: DecorationImage(
              image: AssetImage('assets/12.png'),
              fit: BoxFit.cover)
          ),
        ),
      ),
    ], 
    options: CarouselOptions(
      enlargeCenterPage: false,
      autoPlay: false,
    ));
  }
}