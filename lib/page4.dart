import 'package:carsbee_app/carservice.dart';
import 'package:carsbee_app/checkout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  CarService hatchbackService = CarService(type: "Hatchback", price: 250);
  CarService sedanService = CarService(type: "Sedan", price: 300);
  CarService suvbackService = CarService(type: "SUV", price: 350);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Waterless Clean"),
      centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children:[
            Container(color: Color.fromARGB(255, 226, 225, 225),
              // decoration: BoxDecoration(
              //   gradient: LinearGradient(
              //     begin: Alignment.topRight,
              //     end: Alignment.topLeft,
              //     colors:[Colors.redAccent, Colors.deepPurple] )
              //   // image: DecorationImage(
              //   //   image: AssetImage("asset/carwashbg.jpg"),
              //   //   fit: BoxFit.fill)
              // ),
              child:
            Column(children: [
            Padding(
              padding: EdgeInsets.only(left: 10,top: 20,right: 10),
              child: Container(
                height: 120,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.yellow
                  // color: Colors.deepPurple[100]
                ),
                child: Stack(children: [
                  Positioned(
                    top: 10,
                    left: 100,
                    child: Text("For Hatchback",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                    Positioned(
                    top: 40,
                    left: 130,
                    child: Text("Rs.250",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Positioned(
                    top: 70,left: 110,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => CheckoutScreen(carService: hatchbackService),));
                      },
                      child: Text("Buy Now",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),),
                    ),
                  ),
                ],),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10,top: 20,right: 10),
              child: Container(
                height: 120,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.yellow
                  // color: Colors.deepPurple[100]
                ),
                child: Stack(children: [
                  Positioned(
                    top: 10,
                    left: 100,
                    child: Text("For Sedan",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                    Positioned(
                    top: 40,
                    left: 130,
                    child: Text("Rs.300",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Positioned(
                    top: 70,left: 110,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => CheckoutScreen(carService: sedanService),));
                      },
                      child: Text("Buy Now",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),),
                    ),
                  ),
                ],),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10,top: 20,right: 10),
              child: Container(
                height: 120,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.yellow
                  // color: Colors.deepPurple[100]
                ),
                child: Stack(children: [
                  Positioned(
                    top: 10,
                    left: 100,
                    child: Text("For SUV",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                    Positioned(
                    top: 40,
                    left: 130,
                    child: Text("Rs.350",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Positioned(
                    top: 70,left: 110,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => CheckoutScreen(carService: suvbackService),));
                      },
                      child: Text("Buy Now",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),),
                    ),
                  ),
                ],),
              ),
            ),
          ],),
      )]),
      ),
    );
  }
}