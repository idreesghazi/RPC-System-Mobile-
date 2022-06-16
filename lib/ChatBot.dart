import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/watson_assistant_service.dart';

class ChatBotScreen extends StatefulWidget {
  const ChatBotScreen({Key? key}) : super(key: key);

  @override
  State<ChatBotScreen> createState() => _ChatBotScreenState();
}

class _ChatBotScreenState extends State<ChatBotScreen> {
  void response(query) async {
    String s = "";
    bot.sendInput(query).then((value) {
      //print(value[0]['response_text']);
      s = value[0]['response_text'].toString();
      setState(() {
        messsages.insert(0, {
          "data": 0,
          "message": s
        });
      });
    });

  }
  WatsonAssistantService bot = WatsonAssistantService();
  String sessionId = "";
  List<Map> messsages = [];
  @override
  void initState() {
    super.initState();
    changeColor();
    initialise();
  }

  Future<void> initialise() async {
    await bot.createMySession();
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController messageController = new TextEditingController();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50), // Set this height
        child: Container(

          decoration: BoxDecoration(
            color: Color(0xffFFBD5C),
            boxShadow: [
            BoxShadow(
            color: Colors.grey.withOpacity(0.8),
            spreadRadius: 5,
            blurRadius: 3,
            offset: Offset(0, 1), // changes position of shadow
            ),
            ],
          ),
           child: Column(
             children: [
               SizedBox(height: 60,),
               Row(
                 children: [
                   SizedBox(width: 30,),
                   Image.asset('lib/img/whiteRobo.png'),
                  SizedBox(width: 15,),
                   Text("Chat Bot", style: TextStyle(fontSize: 36,fontFamily: "Abhaya Libre", color: Colors.black),)
                 ],
               ),
             ],
           ),
            ),

        ),
      bottomNavigationBar: Container(
        height:70,
        color: Color(0xffFFBD5C),
      ),

      body: Container(
        color: Color(0xffE5E5E5),

        child: Column(
          children: [
            Flexible(
                child: ListView.builder(
                    reverse: true,
                    itemCount: messsages.length,
                    itemBuilder: (context, index) => chat(
                        messsages[index]["message"].toString(),
                        messsages[index]["data"]),
                )
            ),
            Container(
              width: 500,
              height: 51,
              child: TextField(
                controller: messageController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 11.0, horizontal: 25),
                  filled: true,
                  fillColor: Colors.white,

                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(topLeft: const Radius.circular(33.0),
                        topRight: const Radius.circular(33.0),),
                      borderSide: BorderSide(color: Colors.black.withOpacity(0.1)) // your color
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.only(topLeft: const Radius.circular(33.0),
                      topRight: const Radius.circular(33.0),),
                    borderSide: BorderSide(color: Colors.black.withOpacity(0.1)), // your color
                  ),
                  hintText: 'Type a Message...',
                  hintStyle: TextStyle(fontSize: 27,fontFamily: "Abhaya Libre", fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.77)),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.send, color: Colors.black,),
                    onPressed: (){
                      final String message = messageController.text.trim();
                      setState(() {
                        messsages.insert(0,
                            {"data": 1, "message": message});
                      });
                      response(message);
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget chat(String message, int data) {
    return Container(

      padding: EdgeInsets.only(left: 10, right: 10),

      child: Row(
        mainAxisAlignment: data == 1 ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [

          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
                decoration: BoxDecoration(
                    color: data == 0 ? Color(0xff7F56D7) : Colors.white,
                    borderRadius: data == 0? BorderRadius.only(bottomRight: const Radius.circular(17.0), bottomLeft: const Radius.circular(17.0),
                      topRight: const Radius.circular(17.0),) : BorderRadius.only(bottomRight: const Radius.circular(17.0), bottomLeft: const Radius.circular(17.0),
                      topLeft: const Radius.circular(17.0),)
                ),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[

                      SizedBox(
                        width: 2.0,
                      ),
                      Flexible(
                          child: Container(
                            constraints: BoxConstraints( maxWidth: 200),
                            child: Text(
                              message,
                              style: data == 0 ? TextStyle(fontSize: 27,fontFamily: "Abhaya Libre", color: Colors.white) : TextStyle(fontSize: 27,fontFamily: "Abhaya Libre", color: Colors.black)

                            ),
                          ))
                    ],
                  ),
                )
            ),
          ),
        ],
      ),
    );
  }
}
void changeColor(){
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xffFFBD5C),
      systemNavigationBarIconBrightness: Brightness.dark,
    )
  );

}

