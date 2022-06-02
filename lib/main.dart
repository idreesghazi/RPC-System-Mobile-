import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled/login.dart';

Future main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MaterialApp(
    title: 'test app',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // appBar: AppBar(
      //   title: Text("app"),
      // ),


      body:
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("lib/img/Homepage.png"),
                  fit: BoxFit.cover
            )
          ),
          child: Container(

            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  SizedBox(height: 70,),
                  Text("Ready to manage your properties through a click?",
                      style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold,fontFamily: "Abhaya Libre",
                        shadows: <Shadow>[
                          Shadow(
                          offset: Offset(0.0, 2.0),
                          blurRadius: 8.0,
                          color: Color.fromARGB(150, 0, 0, 0),
                          ),],

                  ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30,),

                  Container(
                    width: 303,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 8,
                          offset: Offset(0, 12),
                        )
                      ],
                    ),
                    child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Color(0xFF131313)),

                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      side: BorderSide(color: Colors.red)

                                  ),
                                ),



                            ),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                                return LoginScreen();
                              },),);
                            },
                            child: Text("Get Started!", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, fontFamily: "Abhaya Libre")),
                    ),

                        ),



                ],

              ),
            )
          ),
        )
      // Padding(
      //
      // padding: const EdgeInsets.only(left : 40.0, right : 40.0),
      //
      // child:
      // Container(
      //     height: 720,
      //    //S color: Colors.red,
      //     child: Column(
      //
      //     mainAxisAlignment: MainAxisAlignment.end,
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //
      //     children:  [
      //
      //       Text("Email", style: TextStyle(fontSize: 37, fontWeight: FontWeight.bold)),
      //       SizedBox(height: 4,),
      //       TextField(
      //         decoration: InputDecoration(
      //           contentPadding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 10),
      //           filled: true,
      //           fillColor: Colors.white,
      //           border: OutlineInputBorder(
      //               borderSide:  BorderSide(width: 5.0,color: Colors.black),
      //               borderRadius: BorderRadius.all(Radius.circular(15))
      //           ),
      //           enabledBorder: OutlineInputBorder(
      //               borderRadius: BorderRadius.all(Radius.circular(15.0)),
      //               borderSide: BorderSide(width: 3.0,color: Colors.black)), // your color
      //
      //
      //           hintText: 'Enter Email',
      //
      //         ),
      //       ),
      //
      //       SizedBox(height: 20,),
      //       Text("Password", style: TextStyle(fontSize: 37, fontWeight: FontWeight.bold)),
      //       TextField(
      //
      //         decoration: InputDecoration(
      //           contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
      //           filled: true,
      //           fillColor: Colors.white,
      //           border: OutlineInputBorder(
      //               borderRadius: BorderRadius.all(Radius.circular(15))
      //
      //           ),
      //           enabledBorder: OutlineInputBorder(
      //               borderRadius: BorderRadius.all(Radius.circular(15.0)),
      //               borderSide: BorderSide(width: 3.0,color: Colors.black)),
      //           hintText: 'Enter Password',
      //         ),
      //       ),
      //       Container(
      //         height: 40,
      //         child: TextButton(
      //         // elevation: 0,
      //         //color: Colors.transparent,
      //         onPressed: (){},
      //         child: Text("Forgot Password?", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold,)),),
      //       ),
      //
      //
      //       Padding(
      //         padding: const EdgeInsets.only(left: 90, top: 75),
      //         child: Container(
      //           width: 150,
      //           height: 40,
      //           child: ElevatedButton(
      //             style: ElevatedButton.styleFrom(
      //                 primary: Colors.black
      //             ),
      //             onPressed: (){},
      //             child: Text("Log in", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),),
      //
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.only(left: 90),
      //         child: Container(
      //           width: 150,
      //           height: 20,
      //
      //           child:
      //
      //           RaisedButton(
      //             elevation: 0,
      //             color: Colors.transparent,
      //             onPressed: (){},
      //             child: Text("Sign up?", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),),
      //
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      // )
    );
  }
}


