import 'package:carsbee_app/auth.dart';
import 'package:carsbee_app/home.dart';
import 'package:carsbee_app/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();

  final TextEditingController emailcontroller = new TextEditingController();
  final TextEditingController passwordcontroller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final emailfield = Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 228, 226, 226)
      ),
      child: TextFormField( 
        
          autofocus: false,
          controller: emailcontroller,
          keyboardType: TextInputType.emailAddress,
          
          validator: (value) {
            if (value!.isEmpty) {
              return ("Please Enter Your Email");
            }
            return null;
          },
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.mail),
              hintText: "email",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)))),
    );
    final passwordfield = Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 228, 226, 226)
      ),
      child: TextFormField(
          autofocus: false,
          controller: passwordcontroller,
          obscureText: true,
          validator: (value) {
            RegExp regex = new RegExp(r'^.{6,}$');
            if (value!.isEmpty) {
              return ("Password is required for login");
            }
            if (!regex.hasMatch(value)) {
              return ("Please Enter valid Password(Min. 6 character)");
            }
          },
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.vpn_key),
              hintText: "password",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)))),
    );
    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.yellow,
      child: MaterialButton(
        onPressed: () async {
          await Authenticationservice(FirebaseAuth.instance)
              .firebaseLogin(
                  emailcontroller.text.trim(), passwordcontroller.text.trim())
              .then((value) {
            if (value == "signed in") {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ));
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("please Enter Your Email")));
            }
          });
        },
        child: Text(
          "Login",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image:AssetImage("assets/download (5).jpg"),
          fit: BoxFit.fill)
        ),
        
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Container(
                color: Colors.transparent,
                child: Form(
                    key: _formkey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 35),
                        ),
                        Text("Welcome To Carsbee",style: TextStyle(fontSize: 33,fontStyle: FontStyle.italic,fontWeight: FontWeight.w900,color: Colors.yellow),),
                        SizedBox(
                          height: 15,
                        ),
                        emailfield,
                        SizedBox(
                          height: 25,
                        ),
                        passwordfield,
                        SizedBox(
                          height: 25,
                        ),
                        loginButton,
                        SizedBox(
                          height: 45,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Don't have a account? ",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w900),),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => RegistrationPage(),
                                    ));
                              },
                              child: Text(
                                "signup",
                                style: TextStyle(
                                    color: Colors.yellow,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 32),
                              ),
                            )
                          ],
                        )
                      ],
                    )),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
