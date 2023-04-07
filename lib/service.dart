import 'package:carsbee_app/item1.dart';
import 'package:carsbee_app/page1.dart';
import 'package:carsbee_app/page2.dart';
import 'package:carsbee_app/page3.dart';
import 'package:carsbee_app/page4.dart';
import 'package:carsbee_app/page5.dart';
import 'package:carsbee_app/page6.dart';
import 'package:carsbee_app/subslider.dart';
import 'package:flutter/material.dart';

class CarWashServiceScreen extends StatefulWidget {
  final String location;
  final String cartype;
  // final String time;


  const CarWashServiceScreen({
    Key? key,
    required this.location,
    required this.cartype,
    // required this.time,
  }) : super(key: key);

  @override
  State<CarWashServiceScreen> createState() => _CarWashServiceScreenState();
}

class _CarWashServiceScreenState extends State<CarWashServiceScreen> {
   List<Item> items = [
  Item(
      Name: 'Foam Wash',
      imageURL: 'assets/download (7).jpg',
    ),
  Item(
      Name: 'Fullbody wash',
      imageURL: 'assets/under-body-car-washing-machine-1585320992-5350138.jpeg',
    ),
    Item(
      Name: 'Interior only',
      imageURL: 'assets/images1.jpg',
    ),
    Item(
      Name: 'Waterless Clean',
      imageURL: 'assets/Waterless-Wash-Wax-Formula.jpg',
    ),
    Item(
      Name: 'Exterior Steam',
      imageURL: 'assets/download.jpg',
    ),
    Item(
      Name: 'Interior Steam',
      imageURL: 'assets/car-detailing-steam-cleaning-concept-handsome-man-black-t-shirt-cap-worker-wash-center-interior-hot-cleaner-179176491.jpg',
    ),
    ];
    List<Item1> items1 = [
  Item1(
    
      imageURL: 'assets/1.png',
    ),
    Item1(
  
      imageURL: 'assets/3.png',
    ),
    Item1(
      
      imageURL: 'assets/6.png',
    ),
    Item1(

      imageURL: 'assets/12.png',
    ),
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carsbee'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 480),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Your Car information',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text('Location: ${widget.location}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 8.0),
              Text('Cartype: ${widget.cartype}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              // SizedBox(height: 8.0),
              // Text('Time: ${widget.time}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.only(right: 180),
                child: Text("Single Wash",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.green),),
              ),
               SizedBox(height: 20,),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: (() {
            
                        final List<Widget> pages = [
            Page1(),
            Page2(),
            Page3(),
            Page4(),
            Page5(),
            Page6()
            // ...
          ];
                      Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => pages[index],));
                      }),
                      child: Container(
                        width: 150,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: Stack(
                          children: [
                            Center(
                              child: CircleAvatar(
                                radius: 50,
                                backgroundImage: AssetImage(
                                  items[index].imageURL),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    items[index].Name,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 202, 209, 212),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    );
                  }),
                ),
                SizedBox(height: 20,),
                Padding(
                padding: const EdgeInsets.only(right: 180),
                child: Text("Our Prime Subscription",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.green),),
              ),
               SizedBox(height: 20,),
               slider1widget()
                // SizedBox(
                //   height: 150,
                //   child: ListView.builder(
                //   itemCount: items1.length,
                //   scrollDirection: Axis.horizontal,
                //   itemBuilder: (BuildContext context, int index) {
                //     return GestureDetector(
                //       onTap: (() {
                //         // Navigator.push(context, 
                //         // MaterialPageRoute(builder: (context) => Vendors(),));
                //       }),
                //       child: Container(
                //         width: 150,
                //         margin: const EdgeInsets.symmetric(horizontal: 10),
                //         child: Stack(
                //           children: [
                //         Image.asset(items1[index].imageURL),
                //             Positioned(
                //               bottom: 0,
                //               left: 10,
                //               child: Column(
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: [
                //                   // Text(
                //                   //   items1[index].Name,
                //                   //   style: const TextStyle(
                //                   //     color: Colors.black,
                //                   //     fontSize: 20,
                //                   //     fontWeight: FontWeight.w500,
                //                   //   ),
                //                   // ),
                //                 ],
                //               ),
                //             ),
                //           ],
                //         ),
                //         decoration: BoxDecoration(
                //           color: Colors.grey[100],
                //           borderRadius: BorderRadius.circular(20),
                //         ),
                //       ),
                //     );
                //   }),
                // ),
            ],
          ),
        ),
      ),
    );
  }
}