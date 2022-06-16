import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:ibm_watson_assistant/ibm_watson_assistant.dart';

class WatsonAssistantService {
  Dio dio = Dio();
  final String _username = "apikey";
  final String _key = "K9QNDk7Cr3kOelkEwMRPpZPgxK4zs12EXqKMPpb73Mvl";
  String sessionId = "";
  String assistantId = "906dc59f-7e09-47ac-94b9-3b613a22eec9";
  String baseUrl =
      "https://api.us-south.assistant.watson.cloud.ibm.com/instances/085d9d9b-52cc-4bba-a0b9-f83e7a74e70a/v2/assistants/";

  // Dio dio = Dio();
  // final String _username = "apikey";
  // final String _key = "mMjWaLQbbgq-GncYkNUmYuMh9K3VT3NU67mB1apXu5rr";
  // String sessionId = "";
  // String assistantId = "86ed92aa-02cb-4354-9bef-17b9def622aa";
  // String baseUrl =
  //     "https://api.us-south.assistant.watson.cloud.ibm.com/instances/304cb930-c9ce-4e64-a096-42d12baad05f/v2/assistants/";

  createMySession() {
    dio.options = BaseOptions(headers: {
      'Content-Type': 'application/json',
      'Authorization': 'Basic ${base64Encode(utf8.encode('$_username:$_key'))}',
    });
    dio
        .post("$baseUrl$assistantId/sessions?version=2021-06-14",
            options: Options(headers: {
              'Content-Type': 'application/json',
              'Authorization':
                  'Basic ${base64Encode(utf8.encode('$_username:$_key'))}',
            }))
        .then((value) {
      sessionId = value.data['session_id'];
      print(sessionId);
    });
  }

  Future sendInput(String input, {bool returnContext = true}) async {
    final data = {
      'input': {
        'text': input,
        'options': {
          'return_context': returnContext,
        }
      }
    };

    final res = await dio.post(
      "$baseUrl$assistantId/sessions/$sessionId/message?version=2021-06-14",
      data: data,
    );
    if (res.data['output']['generic'][0]['response_type'] == 'text') {
      List data = [];
      res.data['output']['generic'].forEach((e) {
        data.add(
            {'type': 'text', 'response_text': e['text'], 'data': res.data});
      });
      return data;
    } else if (res.data['output']['generic'][0]['response_type'] ==
        'user_defined') {
      return [
        {
          'type': 'user_defined',
          'response_text': res.data['output']['generic'][0]['user_defined']
              ['title'],
          'data': res.data,
          'value': res.data['output']['generic'][0]['user_defined']['value']
        }
      ];
    } else {
      return [
        {
          'type': 'option',
          'title': res.data['output']['generic'][0]['title'],
          'options': res.data['output']['generic'][0]['options'],
          'data': res.data
        }
      ];
    }
  }
}
