
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled/FAQ.dart';
import 'package:untitled/RoleSelection.dart';

import 'login.dart';

class NavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.red.withOpacity(0),
      child: Container(
        decoration: new BoxDecoration(
          color: Color(0xff131313),
          borderRadius: BorderRadius.circular(20)
        ),
        child: ListView(
          children: [
            UserAccountsDrawerHeader(accountEmail: Text("Welcome Back", style: TextStyle(fontFamily: "Abhaya Libre", fontWeight: FontWeight.bold, color: Colors.white)),
                accountName: Text("Ahmed Ali",style: TextStyle(fontSize: 20,fontFamily: "Abhaya Libre", fontWeight: FontWeight.bold, color: Colors.white)),
                currentAccountPicture:Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("lib/img/DisplayPfp.jpg"),
                      ),
                    ),
                    ),
                decoration: new BoxDecoration(
                  color: Color(0xff733AEB),
                ),

                  ),
            SizedBox(height: 60,),
            Container(

                alignment: Alignment.centerLeft,
                child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const RoleSelectionScreen();
                    },),);
                },
                  child:  Text("  Home",style: TextStyle(fontSize: 24,fontFamily: "Abhaya Libre",
                       color: Colors.white)), )
            ),
            SizedBox(height: 5,),
            Container(
                alignment: Alignment.centerLeft,
                child: TextButton(onPressed: (){},
                  child:  Text("  Inbox",style: TextStyle(fontSize: 24,fontFamily: "Abhaya Libre",
                      color: Colors.white)), )
            ),
            SizedBox(height: 5,),
            Container(
                alignment: Alignment.centerLeft,
                child: TextButton(onPressed: (){},
                  child:  Text("  Settings",style: TextStyle(fontSize: 24,fontFamily: "Abhaya Libre",
                      color: Colors.white)), )
            ),
            SizedBox(height: 5,),
            Container(
                alignment: Alignment.centerLeft,
                child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const FAQScreen();
                        },),);
                },
                  child:  Text("  FAQ",style: TextStyle(fontSize: 24,fontFamily: "Abhaya Libre",
                      color: Colors.white)), )
            ),
            SizedBox(height: 5,),
            Container(
                alignment: Alignment.centerLeft,
                child: TextButton(onPressed: (){},
                  child:  Text("  Feedback",style: TextStyle(fontSize: 24,fontFamily: "Abhaya Libre",
                      color: Colors.white)), )
            ),
            SizedBox(height: 5,),
            Container(
                alignment: Alignment.centerLeft,
                child: TextButton(onPressed: (){},
                  child:  Text("  About Us",style: TextStyle(fontSize: 24,fontFamily: "Abhaya Libre",
                      color: Colors.white)), )
            ),
            SizedBox(height: 100,),
            Container(
                alignment: Alignment.centerLeft,
                child: TextButton(onPressed: (){
                  Signout();
                  Navigator.pop(context);
                  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
                      builder: (context) => LoginScreen()), (Route route) => false);
                },
                  child:  Text("   Log out",style: TextStyle(fontSize: 20,fontFamily: "Abhaya Libre",
                      color: Color(0xffEF3561))), )
            ),
          ],
        ),
      )
    );
  }
  Future Signout() async{
    await FirebaseAuth.instance.signOut();
  }
}


