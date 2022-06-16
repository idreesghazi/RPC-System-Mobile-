import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:untitled/FireBase.dart';
import 'package:untitled/ProprietorMenu.dart';
import 'package:untitled/RenterMenu.dart';
import 'NavBar.dart';
import 'login.dart';
import 'package:flutter/services.dart';

class ProprietorComplaintScreen extends StatefulWidget {
  const ProprietorComplaintScreen({Key? key}) : super(key: key);

  @override
  State<ProprietorComplaintScreen> createState() => _ProprietorComplaintScreenState();
}

class _ProprietorComplaintScreenState extends State<ProprietorComplaintScreen> {
  final TextEditingController searchController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavBar(),
        resizeToAvoidBottomInset: false,
        body:
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("lib/img/ProprietorComplaint.png"),
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
                              child: Image.asset('lib/img/BellIcon.png')),
                        ],
                      ),
                    ),
                    SizedBox(height: 240,),
                    Container(
                      width: 350,
                      height: 45,
                      child: TextField(
                        controller: searchController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search, color: Colors.black,),
                          contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 25),
                          filled: true,
                          fillColor: Colors.white,

                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              borderSide: BorderSide(color: Colors.black.withOpacity(0.1)) // your color
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide(color: Colors.black.withOpacity(0.2)), // your color
                          ),
                          hintText: 'Search',
                          hintStyle: TextStyle(fontSize: 19, fontFamily: "Abhaya Libre", fontWeight: FontWeight.bold, color: Color(0xffb733AEB)),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        SizedBox(width: 10,),
                        TextButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                            return ProprietorComplaintScreen();
                          },),);
                        },
                            child: Row(
                              children: [
                                Text("1.",textAlign: TextAlign.left,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 19,fontFamily: "Abhaya Libre", color: Colors.black.withOpacity(0.51))),
                                SizedBox(width: 10,),
                                Container(
                                  padding: EdgeInsets.only(top: 5),
                                  width: 130,
                                  height: 38,
                                  decoration: new BoxDecoration(
                                    color: Color(0xff0F0E0E),
                                    borderRadius: BorderRadius.circular(24)
                                  ),
                                  child: Text("Security",textAlign: TextAlign.center,style:TextStyle(fontSize: 25,fontFamily: "Abhaya Libre", color: Colors.white)),
                                 ),
                                SizedBox(width: 10,),
                                Column(
                                  children: [
                                    Text("#P0122",textAlign: TextAlign.left,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 17,fontFamily: "Abhaya Libre", color: Colors.black)),
                                    Text("#U001",textAlign: TextAlign.left,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 17,fontFamily: "Abhaya Libre", color: Colors.black)),

                                  ],
                                ),
                                SizedBox(width: 20,),
                                Text("Pending",textAlign: TextAlign.left,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 22,fontFamily: "Abhaya Libre", color: Color(0xffFF0000).withOpacity(0.53))),


                                SizedBox(width: 10,),
                                Image.asset('lib/img/Expand_down.png'),
                              ],
                            )),


                      ],
                    ),
                  SizedBox(height: 20,),
                    Row(
                      children: [
                        SizedBox(width: 10,),
                        TextButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                            return ProprietorComplaintScreen();
                          },),);
                        },
                            child: Row(
                              children: [
                                Text("2.",textAlign: TextAlign.left,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 19,fontFamily: "Abhaya Libre", color: Colors.black.withOpacity(0.51))),
                                SizedBox(width: 10,),
                                Container(
                                  padding: EdgeInsets.only(top: 9),
                                  width: 130,
                                  height: 38,
                                  decoration: new BoxDecoration(
                                      color: Color(0xff0F0E0E),
                                      borderRadius: BorderRadius.circular(24)
                                  ),
                                  child: Text("Maintenance",textAlign: TextAlign.center,style:TextStyle(fontSize: 18,fontFamily: "Abhaya Libre", color: Colors.white)),
                                ),
                                SizedBox(width: 10,),
                                Column(
                                  children: [
                                    Text("#P0122",textAlign: TextAlign.left,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 17,fontFamily: "Abhaya Libre", color: Colors.black)),
                                    Text("#U001",textAlign: TextAlign.left,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 17,fontFamily: "Abhaya Libre", color: Colors.black)),

                                  ],
                                ),
                                SizedBox(width: 18),
                                Text("Resolved",textAlign: TextAlign.left,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 21,fontFamily: "Abhaya Libre", color: Color(0xff3FCF0D).withOpacity(0.53))),


                                SizedBox(width: 10,),
                                Image.asset('lib/img/Expand_down.png'),
                              ],
                            )),


                      ],
                    ),
                    SizedBox(height:140,),
                    Row(

                      children: [
                        SizedBox(width: 250,),
                        Container(
                            width: 40,
                            height: 60,
                            child: TextButton(onPressed: (){}, child: Image.asset('lib/img/Expand_left_double.png'), )),

                        Container(
                          padding: EdgeInsets.only(top: 5),
                          width: 43,
                            height: 27.57,
                            decoration: new BoxDecoration(
                              color: Color(0xffFDB64D).withOpacity(0.63),
                              borderRadius: BorderRadius.circular(52)
                            ),
                            child: Text("1",textAlign: TextAlign.center,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 17,fontFamily: "Abhaya Libre", color: Colors.black))),
                        Container(
                            width: 40,
                            height: 60,
                            child: TextButton(onPressed: (){}, child: Image.asset('lib/img/Expand_right_double.png'), )),

                      ],
                    ),

                  ],

                ),
              )
          ),
        )
    );
  }
}
