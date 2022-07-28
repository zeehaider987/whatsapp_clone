import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Models/ChatModel.dart';

import 'CustomeUI/ButtonCard.dart';
import 'Screens/HomeScreen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  ChatModel? sourceChat;
  List<ChatModel> chatmodels = [
    ChatModel(
      name: "mohammad developer",
      isGroup: false,
      currentMessage: "Hi mohammad developer",
      time: "4:00",
      icon: "person.svg",
      id: 1,
    ),
    ChatModel(
      name: "Kawish khatoi",
      isGroup: false,
      currentMessage: "Hi Kawish khatoi",
      time: "13:00",
      icon: "person.svg",
      id: 2,
    ),

    ChatModel(
      name: "Mohammad khan",
      isGroup: false,
      currentMessage: "Hi Mohammad khan",
      time: "8:00",
      icon: "person.svg",
      id: 3,
    ),

    ChatModel(
      name: "Salman Haider",
      isGroup: false,
      currentMessage: "Hi Salman Haider",
      time: "2:00",
      icon: "person.svg",
      id: 4,
    ),

    // ChatModel(
    //   name: "NodeJs Group",
    //   isGroup: true,
    //   currentMessage: "New NodejS Post",
    //   time: "2:00",
    //   icon: "group.svg",
    // ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: chatmodels.length,
          itemBuilder: (contex, index) => InkWell(
                onTap: () {
                  sourceChat = chatmodels.removeAt(index);
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => Homescreen(
                                chatmodels: chatmodels,
                                sourchat: sourceChat,
                              )));
                },
                child: ButtonCard(
                  name: chatmodels[index].name,
                  icon: Icons.person,
                ),
              )),
    );
  }
}