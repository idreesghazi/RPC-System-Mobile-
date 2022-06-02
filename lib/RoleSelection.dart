
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:untitled/FireBase.dart';
import 'package:untitled/ProprietorMenu.dart';
import 'package:untitled/RenterMenu.dart';
import 'NavBar.dart';
import 'login.dart';
import 'package:flutter/services.dart';

class RoleSelectionScreen extends StatefulWidget {
  const RoleSelectionScreen({Key? key}) : super(key: key);

  @override
  State<RoleSelectionScreen> createState() => _RoleSelectionScreenState();
}

class _RoleSelectionScreenState extends State<RoleSelectionScreen> {
    @override
  Widget build(BuildContext context) {
        //dispose();

        return Scaffold(
            //resizeToAvoidBottomInset: false,
            drawer: NavBar(),

        body:
        Padding(
          padding: EdgeInsets.zero,
          child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage("lib/img/RoleSelection.png"),
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
              SizedBox(height: 370,),
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
                  return ProprietorMenuScreen();
                  },),);
                  },
                  child: Text("Proprietor", style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold, fontFamily: "Abhaya Libre")),
                  ),

              ),
              SizedBox(height: 50,),
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
                              return RenterMenuScreen();
                          },),);
                      },
                      child: Text("Renter", style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold, fontFamily: "Abhaya Libre")),
                  ),

              ),



    ],

    ),
    )
    ),
    ),
        )
    );
  }
    void dispose(){
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    }
}
