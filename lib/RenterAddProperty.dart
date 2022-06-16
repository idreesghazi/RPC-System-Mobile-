import 'package:flutter/material.dart';

import 'NavBar.dart';

class RenterAddPropertyScreen extends StatefulWidget {
  const RenterAddPropertyScreen({Key? key}) : super(key: key);

  @override
  State<RenterAddPropertyScreen> createState() => _RenterAddPropertyScreenState();
}

class _RenterAddPropertyScreenState extends State<RenterAddPropertyScreen> {
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController nameController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        drawer: NavBar(),
        body:
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("lib/img/AddProperty.png"),
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
                    SizedBox(height: 290,),

                    Container(
                      width: 324,
                      height: 42,
                      child: TextField(
                        maxLines: 9,
                        controller: nameController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(

                          contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25),
                          filled: true,
                          fillColor: Colors.white,

                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              borderSide: BorderSide(color: Colors.black.withOpacity(0.1))
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20.0)),
                              borderSide: BorderSide(color: Colors.black.withOpacity(0.1))
                          ),

                          hintText: 'Property Id',
                          hintStyle: TextStyle(fontFamily: "Abhaya Libre", fontWeight: FontWeight.bold, color: Color(0xff733AEB).withOpacity(0.54)),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text("OR",style: TextStyle(fontFamily: "Abhaya Libre", fontSize: 28,fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.47)),),
                    SizedBox(height: 20,),
                    Container(
                      width: 324,
                      height: 42,
                      child: TextField(
                        maxLines: 9,
                        controller: nameController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(

                          contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25),
                          filled: true,
                          fillColor: Colors.white,

                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              borderSide: BorderSide(color: Colors.black.withOpacity(0.1))
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20.0)),
                              borderSide: BorderSide(color: Colors.black.withOpacity(0.1))
                          ),

                          hintText: 'User Id',
                          hintStyle: TextStyle(fontFamily: "Abhaya Libre", fontWeight: FontWeight.bold, color: Color(0xff733AEB).withOpacity(0.54)),
                        ),
                      ),
                    ),
                    SizedBox(height: 40,),
                    Container(
                      padding: EdgeInsets.zero,
                      width: 87,
                      height: 42,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Color(0xFF131313)),
                            minimumSize: MaterialStateProperty.all<Size>(Size(178,56)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                side: BorderSide.none,

                              ),
                            ),
                          ),
                          onPressed: () {
                          },
                          child: Text(
                              "Add", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "Abhaya Libre", fontSize: 16, color: Colors.white,
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
