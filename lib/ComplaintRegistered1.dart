

import 'package:flutter/material.dart';

import 'NavBar.dart';
import 'RenterMainMenu.dart';
import 'RenterMainMenu1.dart';

class ComplaintRegisteredScreen1 extends StatefulWidget {
  const ComplaintRegisteredScreen1({Key? key}) : super(key: key);

  @override
  State<ComplaintRegisteredScreen1> createState() => _ComplaintRegisteredScreen1State();
}

class _ComplaintRegisteredScreen1State extends State<ComplaintRegisteredScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        drawer: NavBar(),
        body:
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("lib/img/ComplaintRegisteredScreen.png"),
                  fit: BoxFit.cover
              )
          ),
          child: Container(

              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  //mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    SizedBox(height: 26,),
                    Align(
                      alignment: Alignment(-0.8, 0.2),
                      child: Row(
                        children: [
                          SizedBox(width: 13,),
                          Builder(
                              builder: (context) {
                                return Container(

                                  child: TextButton(onPressed: () =>
                                      Scaffold.of(context).openDrawer(),
                                      child: Image.asset(
                                          'lib/img/DrawerIcon.png')),
                                );
                              }
                          ),
                          SizedBox(width: 250,),
                          TextButton(onPressed: () {},
                              child: Image.asset('lib/img/BellIcon.png')),
                        ],
                      ),
                    ),
                    SizedBox(height: 540,),
                    Container(
                      padding: EdgeInsets.zero,
                      width: 87,
                      height: 42,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color(0xFF131313)),
                            minimumSize: MaterialStateProperty.all<Size>(
                                Size(178, 56)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                side: BorderSide.none,

                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                              return RenterMainMenuScreen1();
                            },),);
                          },
                          child: Text(
                              "Back", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "Abhaya Libre",
                            fontSize: 16,
                            color: Colors.white,
                          )
                          )),
                    ),

                  ],

                ),
              )
          ),
        )
    );
  }
}
