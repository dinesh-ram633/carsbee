
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';




class sliderwidget extends StatelessWidget {
  const sliderwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
    items: [
      GestureDetector(
        onTap: () {
        },
        child: Container(
          padding: EdgeInsets.only(left: 10, bottom: 24),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            image: DecorationImage(
              image: AssetImage('assets/download (5).jpg'),
              fit: BoxFit.cover)
          ),
        ),
      ),
      
      GestureDetector(
        onTap: () {
        },
        child: Container(
          padding: EdgeInsets.only(left: 20, bottom: 24),
          margin: EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            image: DecorationImage(
              image: AssetImage('assets/images.jpg'),
              fit: BoxFit.cover)
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
        },
        child: Container(
          padding: EdgeInsets.only(left: 20, bottom: 24),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            image: DecorationImage(
              image: AssetImage('assets/images (5).jpg'),
              fit: BoxFit.cover)
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
        },
        child: Container(
          padding: EdgeInsets.only(left: 20, bottom: 24),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            image: DecorationImage(
              image: AssetImage('assets/download (3).jpg'),
              fit: BoxFit.cover)
          ),
        ),
      ),
    ], 
    options: CarouselOptions(
      enlargeCenterPage: true,
      autoPlay: true,
    ));
  }
}