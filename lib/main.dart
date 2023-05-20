import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:firebase_core/firebase_core.dart';
import 'profile_page.dart';
import 'download_page.dart';

class ChatGPTScreen extends StatefulWidget {
  const ChatGPTScreen({super.key});

  @override
  _ChatGPTScreenState createState() => _ChatGPTScreenState();
}

class _ChatGPTScreenState extends State<ChatGPTScreen> {
  bool value1 = true;
  bool value2 = true;
  bool value3 = true;
  bool value4 = true;
  bool value5 = true;
  bool value6 = true;
  bool value7 = true;
  bool value8 = true;
  int count = 0;



  final TextEditingController _messageController = TextEditingController();
  final List<String> _messages = [];

  Future<String> _sendMessage(String message) async {
    const apiUrl = 'https://api.openai.com/v1/chat/completions';
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer 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',
    };

    final data = {
      'model': 'gpt-3.5-turbo',
      'messages': [
        {'role': 'system', 'content': 'You are a helpful assistant.'},
        {'role': 'user', 'content': message},
      ],
    };

    final response =
    await http.post(Uri.parse(apiUrl), headers: headers, body: json.encode(data));
    final responseData = json.decode(response.body);
    final completions = responseData['choices'][0]['message']['content'];

    return completions;
  }

  void openProfilePage() {
    
  }
  void _sendMessageHandler() async {
    final message = _messageController.text;
    _messageController.clear();
    for(int i = 0 ; i<count;i++){

    }
    var str = "find me the" + "of the following abstract given in the link  in following format [key]: [value] , having line space between each thing $message";

    final botReply = await _sendMessage(str);

    setState(() {
      _messages.add('Assistant: \n$botReply');
    });

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Thesus"),
        actions: [
          IconButton(
            icon: Icon(Icons.download),
            onPressed: () {
              openDownloadsPage(context);
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              openProfilesPage(context);
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(

        onPressed: () {

      },
        child: Icon(Icons.add),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(

              children: [
                // ListView(
                //   children: "My name is Abhinav "
                // .split(' ')                       // split the text into an array
                // .map((String text) => Text(text)) // put the text inside a widget
                // .toList(),                        // convert the iterable to a list
                // ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _messageController,
                    decoration: InputDecoration(
                      labelText: 'Type your title...',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.manage_search),
                        onPressed: _sendMessageHandler,
                      ),
                    ),
                  ),

                ),Container(

                  child:Column( children: [
                    const SizedBox(height:25 ,),

                    CheckboxListTile(
                      title: const Text("Title"), //    <-- label
                      selected: value1,
                      value: value1,
                      onChanged: (bool? value_) {
                        setState(() {
                          value1 = value_!;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: const Text("Author(s)"), //    <-- label
                      selected: value2,
                      value: value2,
                      onChanged: (bool? value_) {
                        setState(() {
                          value2 = value_!;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: const Text("Industry"), //    <-- label
                      selected: value3,
                      value: value3,
                      onChanged: (bool? value_) {
                        setState(() {
                          value3 = value_!;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: const Text("Methodology"), //    <-- label
                      selected: value4,
                      value: value4,
                      onChanged: (bool? value_) {
                        setState(() {
                          value4 = value_!;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: const Text("Sample size"), //    <-- label
                      selected: value5,
                      value: value5,
                      onChanged: (bool? value_) {
                        setState(() {
                          value5 = value_!;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: const Text("Findings and novelty"), //    <-- label
                      selected: value6,
                      value: value6,
                      onChanged: (bool? value_) {
                        setState(() {
                          value6 = value_!;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: const Text("Limitations and future scope"), //    <-- label
                      selected: value7,
                      value: value7,
                      onChanged: (bool? value_) {
                        setState(() {
                          value7 = value_!;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: const Text("Critics and thoughts"), //    <-- label
                      selected: value8,
                      value: value8,
                      onChanged: (bool? value_) {
                        setState(() {
                          value8 = value_!;
                        });
                      },
                    ),
                  ],)
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey[200],
              child: ListView.builder(
                itemCount: _messages.length,
                itemBuilder: (ctx, index) => ListTile(
                  title: Text(
                    _messages[index],
                    textAlign: TextAlign.start,
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void openDownloadsPage(BuildContext context) {
    Navigator.pushNamed(context, '/downloads');
  }

  void openProfilesPage(BuildContext context) {
    Navigator.pushNamed(context, '/profile');
  }

  List<String> getCheckedTexts(List<bool> checkboxValues) {
    List<String> checkedTexts = [];

    for (int i = 0; i < checkboxValues.length; i++) {
      if (checkboxValues[i]) {
        checkedTexts.add('Checkbox ${i + 1}');
      }
    }

    return checkedTexts;
  }
}


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MediaQuery(data:  MediaQueryData(),

      child: MaterialApp(


          debugShowCheckedModeBanner: false,
          title: 'Get you summary',
        initialRoute: '/',
        routes: {
          '/': (context) => ChatGPTScreen(),
          '/profile': (context) => ProfilePage(),
          '/downloads': (context) => DownloadsPage(),
        },

    ),
    );
  }





}
