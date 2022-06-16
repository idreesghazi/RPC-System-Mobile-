import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:untitled/FireBase.dart';
import 'package:untitled/ProprietorMenu.dart';
import 'package:untitled/RenterMenu.dart';
import 'NavBar.dart';
import 'RenterComplaint.dart';
import 'login.dart';
import 'package:flutter/services.dart';


class RenterMainMenuScreen extends StatefulWidget {
  const RenterMainMenuScreen({Key? key}) : super(key: key);

  @override
  State<RenterMainMenuScreen> createState() => _RenterMainMenuScreenState();
}

class _RenterMainMenuScreenState extends State<RenterMainMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
        drawer: NavBar(),

        body:
        Padding(
          padding: EdgeInsets.zero,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("lib/img/RenterMainMenu.png"),
                    fit: BoxFit.cover
                )
            ),
            child: Container(

                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      SizedBox(height: 26,),
                      Align(
                        alignment: Alignment(-0.8,0.2),
                        child: Row(
                          children: [
                            SizedBox(width: 13,),
                            Builder(
                                builder: (context) {
                                  return Container(

                                    child: TextButton(onPressed: () => Scaffold.of(context).openDrawer(),
                                        child: Image.asset('lib/img/DrawerIcon.png')),
                                  );
                                }
                            ),
                            SizedBox(width: 250,),
                            TextButton(onPressed: () {},
                                child: Image.asset('lib/img/WhiteNotificationIcon.png')),
                          ],
                        ),
                      ),
                      SizedBox(height: 270,),
                      Row(

                        children: [
                          SizedBox(width: 20,),
                          Material(
                            elevation: 8,

                            borderRadius: BorderRadius.circular(20),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child:
                              Container(
                                width: 66.72,
                                height: 56.4,
                                decoration: new BoxDecoration(
                                    border: Border.all(color: Color(0xffFFBD5C),width: 3),
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                image: AssetImage("lib/img/prop1.jpg"),
                                fit: BoxFit.cover
                              ),
                          ),
                          ),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("House 70 - I9/4",style:TextStyle(fontSize: 18,fontFamily: "Abhaya Libre", fontWeight: FontWeight.bold, color: Colors.black)),
                              SizedBox(height: 5,),
                              Text("Rented",textAlign: TextAlign.left,style:TextStyle(fontSize: 18,fontFamily: "Abhaya Libre", fontWeight: FontWeight.bold, color: Color(0xff733AEB).withOpacity(0.51))),

                      ],
                    ),

              ],
                      ),
                      SizedBox(height: 90,),
                      Row(
                        children: [
                          SizedBox(width: 20,),
                          TextButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                              return RenterComplaintScreen();
                            },),);
                          },
                              child: Row(
                                children: [
                                  Image.asset('lib/img/Icon-CircleWavyWarning.png'),
                                  SizedBox(width: 20,),
                                  Text("Complaints",textAlign: TextAlign.left,style:TextStyle(fontSize: 25,fontFamily: "Abhaya Libre", color: Colors.black)),
                                  SizedBox(width: 135,),
                                  Image.asset('lib/img/Expand_down.png'),
                                ],
                              )),

                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 18,),
                          TextButton(onPressed: () {},
                              child: Row(
                                children: [
                                  Image.asset('lib/img/Home_duotone_line.png'),
                                  SizedBox(width: 20,),
                                  Text("Properties",textAlign: TextAlign.left,style:TextStyle(fontSize: 25,fontFamily: "Abhaya Libre", color: Colors.black)),
                                  SizedBox(width: 145,),
                                  Image.asset('lib/img/Expand_down.png'),
                                ],
                              )),

                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 20,),
                          TextButton(onPressed: () {},
                              child: Row(
                                children: [
                                  Image.asset('lib/img/Icon-CreditCard.png'),
                                  SizedBox(width: 20,),
                                  Text("Rent Payment",textAlign: TextAlign.left,style:TextStyle(fontSize: 25,fontFamily: "Abhaya Libre", color: Colors.black)),
                                  SizedBox(width: 110,),
                                  Image.asset('lib/img/Expand_down.png'),
                                ],
                              )),

                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 20,),
                          TextButton(onPressed: () {},
                              child: Row(
                                children: [
                                  Image.asset('lib/img/Icon-ChatCircle.png'),
                                  SizedBox(width: 20,),
                                  Text("Inbox",textAlign: TextAlign.left,style:TextStyle(fontSize: 25,fontFamily: "Abhaya Libre", color: Colors.black)),
                                  SizedBox(width: 195,),
                                  Image.asset('lib/img/Expand_down.png'),
                                ],
                              )),

                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 20,),
                          TextButton(onPressed: () {},
                              child: Row(
                                children: [
                                  Image.asset('lib/img/Icon-Briefcase.png'),
                                  SizedBox(width: 20,),
                                  Text("Lease",textAlign: TextAlign.left,style:TextStyle(fontSize: 25,fontFamily: "Abhaya Libre", color: Colors.black)),
                                  SizedBox(width: 195,),
                                  Image.asset('lib/img/Expand_down.png'),
                                ],
                              )),

                        ],
                      ),





                    ],

                  ),
                )
            ),
          ),
        )
    );
  }
}
