
import 'package:flutter/material.dart';

import 'NavBar.dart';

class ProprietorMenuScreen extends StatefulWidget {
  const ProprietorMenuScreen({Key? key}) : super(key: key);

  @override
  State<ProprietorMenuScreen> createState() => _ProprietorMenuScreenState();
}

class _ProprietorMenuScreenState extends State<ProprietorMenuScreen> {
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
                  image: AssetImage("lib/img/ProprietorMenuScreen.png"),
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
                    SizedBox(height: 180,),
                    Container(
                      width: 303,
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
                          hintText: 'Your Email',
                          hintStyle: TextStyle(fontFamily: "Abhaya Libre", fontWeight: FontWeight.bold, color: Color(0xffb733AEB)),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),

                    Row(
                      children: [
                        SizedBox(width: 40,),
                        Material(
                          elevation: 8,
                          borderRadius: BorderRadius.circular(20),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: InkWell(
                            splashColor: Colors.black26,
                            onTap: (){},
                            child: Column(
                              children: [
                                Container(
                                  width: 154.56,
                                  height: 111,
                                  decoration: new BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("lib/img/prop1.jpg"),
                                          fit: BoxFit.cover
                                      )

                                  ),

                                ),
                                Container(
                                    decoration: new BoxDecoration(
                                      color: Colors.black.withOpacity(0.92),
                                    ),
                                    alignment: Alignment.center,
                                    width: 154.56,
                                    height: 32.27,
                                    child: Text("House 70 - I9/4",style:TextStyle(fontSize: 18,fontFamily: "Abhaya Libre", fontWeight: FontWeight.bold, color: Color(0xfff4f4f4)))),

                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 15,),
                        Material(
                          elevation: 8,
                          borderRadius: BorderRadius.circular(20),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: InkWell(
                            splashColor: Colors.black26,
                            onTap: (){},
                            child: Column(
                              children: [
                                Container(
                                  width: 154.56,
                                  height: 111,
                                  decoration: new BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("lib/img/prop2.jpg"),
                                          fit: BoxFit.cover
                                      )

                                  ),

                                ),
                                Container(
                                    decoration: new BoxDecoration(
                                      color: Colors.black.withOpacity(0.92),
                                    ),
                                    alignment: Alignment.center,
                                    width: 154.56,
                                    height: 32.27,
                                    child: Text("House 33 - DHA",style:TextStyle(fontSize: 18,fontFamily: "Abhaya Libre", fontWeight: FontWeight.bold, color: Color(0xfff4f4f4)))),

                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 20,),

                    Row(
                      children: [
                        SizedBox(width: 40,),
                        Material(
                          elevation: 8,
                          borderRadius: BorderRadius.circular(20),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: InkWell(
                            splashColor: Colors.black26,
                            onTap: (){},
                            child: Column(
                              children: [
                                Container(
                                  width: 154.56,
                                  height: 111,
                                  decoration: new BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("lib/img/prop3.jpg"),
                                          fit: BoxFit.cover
                                      )

                                  ),

                                ),
                                Container(
                                    decoration: new BoxDecoration(
                                      color: Colors.black.withOpacity(0.92),
                                    ),
                                    alignment: Alignment.center,
                                    width: 154.56,
                                    height: 32.27,
                                    child: Text("House 40 - F9/1",style:TextStyle(fontSize: 18,fontFamily: "Abhaya Libre", fontWeight: FontWeight.bold, color: Color(0xfff4f4f4)))),

                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 15,),
                        Material(
                          elevation: 8,
                          borderRadius: BorderRadius.circular(20),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: InkWell(
                            splashColor: Colors.black26,
                            onTap: (){},
                            child: Column(
                              children: [
                                Container(
                                  width: 154.56,
                                  height: 111,
                                  decoration: new BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("lib/img/prop - add.jpg"),
                                          fit: BoxFit.cover
                                      )

                                  ),

                                ),
                                Container(
                                    decoration: new BoxDecoration(
                                      color: Colors.black.withOpacity(0.92),
                                    ),
                                    alignment: Alignment.center,
                                    width: 154.56,
                                    height: 32.27,
                                    child: Text("Add Property",style:TextStyle(fontSize: 18,fontFamily: "Abhaya Libre", fontWeight: FontWeight.bold, color: Color(0xfff4f4f4)))),

                              ],
                            ),
                          ),
                        ),
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
