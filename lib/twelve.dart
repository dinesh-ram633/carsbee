
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TwelveMonth extends StatefulWidget {
  const TwelveMonth({super.key});

  @override
  State<TwelveMonth> createState() => _TwelveMonthState();
}

class _TwelveMonthState extends State<TwelveMonth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text("Subscription",
        style:TextStyle(
          color: Colors.black,
          fontSize: 24
        ) ,),
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
                height: 200,
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
                    child: Text("Daily Clean",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                   Positioned(
                    top: 35,
                    left: 110,
                    child: Text("Rs. 25200",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Positioned(
                    top: 70,
                    left: 10,
                    child: Text("* Daily Exterior wash",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Positioned(
                    top: 100,left: 10,
                    child: Text("* 15days once interior vacuum clean ",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),),
                  ),
                  Positioned(
                    top: 140,left: 110,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                      onPressed: () {},
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
                height: 200,
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
                    child: Text("Weekly Clean",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                   Positioned(
                    top: 35,
                    left: 110,
                    child: Text("Rs. 12600",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Positioned(
                    top: 70,
                    left: 10,
                    child: Text("* Weekly Exterior wash",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Positioned(
                    top: 100,left: 10,
                    child: Text("* 15days once interior vacuum clean ",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),),
                  ),
                  Positioned(
                    top: 140,left: 110,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                      onPressed: () {},
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
                height: 200,
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
                    child: Text("Weekly Clean",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                   Positioned(
                    top: 35,
                    left: 110,
                    child: Text("Rs. 29400",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Positioned(
                    top: 70,
                    left: 10,
                    child: Text("* Weekly Exterior wash",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                    Positioned(
                    top: 100,
                    left: 10,
                    child: Text("* 15days once foam wash",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Positioned(
                    top: 130,left: 10,
                    child: Text("* 15days once interior vacuum clean ",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),),
                  ),
                  Positioned(
                    top: 160,left: 110,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                      onPressed: () {},
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
            // Padding(
            //   padding: EdgeInsets.only(left: 50,top: 20,right: 50),
            //   child: Container(
            //     height: 220,
            //     width: 300,
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(25),
            //       color: Colors.deepOrange[100]
            //     ),
            //     child: Stack(children: [
            //       Positioned(
            //         top: 10,
            //         left: 90,
            //         child: Text("Starts at \n Rs. 8400",
            //         style: TextStyle(
            //           fontSize: 22,
            //           color: Colors.black,
            //           fontWeight: FontWeight.bold
            //         ),),
            //       ),
            //       Center(
            //         child: Text("6 Months Platinum",
            //         style: TextStyle(
            //           fontSize: 22,
            //           color: Colors.black,
            //           fontWeight: FontWeight.bold
            //         ),),
            //       ),
            //       Positioned(
            //         bottom: 60,left: 40,
            //         child: Text("24 Exterior + 24 Interior",
            //           style: TextStyle(
            //             fontSize: 22,
            //             color: Colors.black,
            //             fontWeight: FontWeight.bold
            //           ),),
            //       ),
            //       Positioned(
            //         bottom: 10,left: 90,
            //         child: ElevatedButton(
            //           onPressed: () {},
            //           child: Text("Buy Now",
            //             style: TextStyle(
            //               fontSize: 22,
            //               color: Colors.black,
            //               fontWeight: FontWeight.bold
            //             ),),
            //         ),
            //       ),
            //     ],),
            //   ),
            // ),
            // Padding(
            //   padding: EdgeInsets.only(left: 50,top: 20,right: 50),
            //   child: Container(
            //     height: 220,
            //     width: 300,
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(25),
            //       color: Colors.indigo[100]
            //     ),
            //     child: Stack(children: [
            //       Positioned(
            //         top: 10,
            //         left: 90,
            //         child: Text("Starts at \n Rs. 4400",
            //         style: TextStyle(
            //           fontSize: 22,
            //           color: Colors.black,
            //           fontWeight: FontWeight.bold
            //         ),),
            //       ),
            //       Center(
            //         child: Text("3 Months Platinum",
            //         style: TextStyle(
            //           fontSize: 22,
            //           color: Colors.black,
            //           fontWeight: FontWeight.bold
            //         ),),
            //       ),
            //       Positioned(
            //         bottom: 60,left: 40,
            //         child: Text("12 Exterior + 12 Interior",
            //           style: TextStyle(
            //             fontSize: 22,
            //             color: Colors.black,
            //             fontWeight: FontWeight.bold
            //           ),),
            //       ),
            //       Positioned(
            //         bottom: 10,left: 90,
            //         child: ElevatedButton(
            //           onPressed: () {},
            //           child: Text("Buy Now",
            //             style: TextStyle(
            //               fontSize: 22,
            //               color: Colors.black,
            //               fontWeight: FontWeight.bold
            //             ),),
            //         ),
            //       ),
            //     ],),
            //   ),
            // ),
            // Padding(
            //   padding: EdgeInsets.only(left: 50,top: 20,right: 50),
            //   child: Container(
            //     height: 220,
            //     width: 500,
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(25),
            //       color: Colors.amber[100]
            //     ),
            //     child: Stack(children: [
            //       Positioned(
            //         top: 10,
            //         left: 90,
            //         child: Text("Starts at \n Rs. 7320",
            //         style: TextStyle(
            //           fontSize: 22,
            //           color: Colors.black,
            //           fontWeight: FontWeight.bold
            //         ),),
            //       ),
            //       Center(
            //         child: Text("6 Months Gold",
            //         style: TextStyle(
            //           fontSize: 22,
            //           color: Colors.black,
            //           fontWeight: FontWeight.bold
            //         ),),
            //       ),
            //       Positioned(
            //         bottom: 60,left: 40,
            //         child: Text("24 Exterior + 12 Interior",
            //           style: TextStyle(
            //             fontSize: 22,
            //             color: Colors.black,
            //             fontWeight: FontWeight.bold
            //           ),),
            //       ),
            //       Positioned(
            //         bottom: 10,left: 90,
            //         child: ElevatedButton(
            //           onPressed: () {
            //             // Navigator.push(context, 
            //             // MaterialPageRoute(
            //             //   builder: (context) => PaymentScreen(),));
            //           },
            //           child: Text("Buy Now",
            //             style: TextStyle(
            //               fontSize: 22,
            //               color: Colors.black,
            //               fontWeight: FontWeight.bold
            //             ),),
            //         ),
            //       ),
            //     ],),
            //   ),
            // )
          ],),
      )]),
      ),
    );
  }
}