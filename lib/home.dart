import 'package:carsbee_app/drawer.dart';
import 'package:carsbee_app/map.dart';
import 'package:carsbee_app/service.dart';
import 'package:carsbee_app/slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  final _locationController = TextEditingController();
  final _cartypeController = TextEditingController();
  final _timeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerScreen(),
      appBar: AppBar(
        title: Text("Carsbee"),
        centerTitle: true,
      ),
      body: Center(
        child:
         Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: TextField(
              decoration: InputDecoration(
                hintText: "Current location",
                suffixIcon: IconButton(onPressed: (() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyLocation(),));
                }), icon: Icon(Icons.my_location))
              ),
            ),
                  ),
            SizedBox(height: 10,),
                 Text(
                  'Our service overviews',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                sliderwidget(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Welcome to Car Wash at Your Doorstep!',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 32.0),
                TextFormField(
                  controller: _locationController,
                  decoration: InputDecoration(
                    labelText: 'Enter your location',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your location';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                 TextFormField(
                  controller: _cartypeController,
                  decoration: InputDecoration(
                    labelText: 'Enter Your Car Type',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter Your Car Type';
                    }
                    return null;
                  },
                ),
                // SizedBox(height: 16.0),
                // TextFormField(
                //   controller: _timeController,
                //   decoration: InputDecoration(
                //     labelText: 'Select preferred time',
                //     border: OutlineInputBorder(),
                //   ),
                //   validator: (value) {
                //     if (value!.isEmpty) {
                //       return 'Please select a time';
                //     }
                //     return null;
                //   },
                // ),
                SizedBox(height: 15.0),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // navigate to the car wash service screen
                      // with the location and time details
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CarWashServiceScreen(
                            location: _locationController.text,
                            cartype: _cartypeController.text,
                            // time: _timeController.text,
                          ),
                        ),
                      );
                    }
                  },
                  child: Text('Schedule a Car Wash'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}