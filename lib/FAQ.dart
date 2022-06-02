

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/ChatBot.dart';
import 'package:untitled/signup.dart';

import 'NavBar.dart';

class FAQScreen extends StatefulWidget {
  const FAQScreen({Key? key}) : super(key: key);

  @override
  State<FAQScreen> createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController nameController = new TextEditingController();
  final items = ['Chat With Bot', 'Live Chat'];
  String? value;
  @override
  Widget build(BuildContext context) => Scaffold(
        resizeToAvoidBottomInset: false,
        drawer: NavBar(),
        body:
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("lib/img/FAQScreen.png"),
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
                    SizedBox(height: 300,),
                    Container(
                      width: 303,
                      height: 45,
                      child: TextField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25),
                          filled: true,
                          fillColor: Colors.white,

                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              borderSide: BorderSide(color: Colors.black.withOpacity(0.1)) // your color
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20.0)),
                              borderSide: BorderSide(color: Colors.black.withOpacity(0.1))
                          ),
                          hintText: 'Name',
                          hintStyle: TextStyle(fontFamily: "Abhaya Libre", fontWeight: FontWeight.bold, color: Color(0xff733AEB).withOpacity(0.54)),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      width: 303,
                      height: 45,
                      child: TextField(
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

                          hintText: 'Email',
                          hintStyle: TextStyle(fontFamily: "Abhaya Libre", fontWeight: FontWeight.bold, color: Color(0xff733AEB).withOpacity(0.54)),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      width: 303,
                      height: 45,
                      decoration: new BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black.withOpacity(0.1)),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                            hint: Text("Select an option",style:
                            TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "Abhaya Libre", color: Color(0xff733AEB).withOpacity(0.54)),
                            ),
                            value: value,
                            isExpanded: true,
                            iconSize: 30,
                            icon: Container(
                                width: 50,
                                alignment: Alignment.center,
                                decoration: new BoxDecoration(
                                  color: Color(0xff733AEB),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Icon(Icons.keyboard_arrow_down,color: Colors.white,)),
                            items: items.map(buildMenuItem).toList(),
                            onChanged: (value) => setState(() => this.value = value),
                        ),
                      ),
                    ),
                    SizedBox(height: 85,),
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
                          onPressed: (){
                            final String email = emailController.text.trim();
                            final String name = nameController.text.trim();
                            if(value == "Chat With Bot"){
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context){
                                    return AlertDialog(
                                      title: Text("Chatbot Not Connected"),
                                      content: Text("Please Check your Internet Connection"),
                                    );
                                  }
                              );
                            }
                            else if(value == "Live Chat" && !email.isEmpty && !name.isEmpty){
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context){
                                    return AlertDialog(
                                      title: Text("Assistant is not available"),
                                      content: Text("Come Back Later"),
                                    );
                                  }
                              );
                            }
                            else{
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context){
                                    return AlertDialog(
                                      title: Text("Error"),
                                      content: Text("Please fill all the fields"),
                                    );
                                  }
                              );
                            }
                          },
                          child: Text(
                            "Start Chat!", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "Abhaya Libre", fontSize: 12.2, color: Colors.white,
                          )
                          )),
                    )
                  ],

                ),
              )
          ),
        )
    );
    DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
      child: Text(
        item,
        style: TextStyle(
          fontFamily: "Abhaya Libre", fontSize: 16, color: Color(0xff733AEB).withOpacity(0.54),
        )
      ),

    );
  }

