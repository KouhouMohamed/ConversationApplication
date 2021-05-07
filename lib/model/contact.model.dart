import 'dart:math';
import 'package:contacts_app/enum/type.contact.enum.dart';
import 'package:contacts_app/enum/type.message.dart';
import 'package:contacts_app/model/message.model.dart';
import 'package:flutter/material.dart';

class Contact{
  String name;
  String profile;
  int score;
  TypeContact type;
  List<Message> messages = [
    Message(content: "Bonjour",type: TypeMessage.SEND),
    Message(content: "Bonjour comment allez vous ?",type: TypeMessage.RECEIVE)
  ];
  Color myColor = Color.fromARGB(255,Random().nextInt(255) , Random().nextInt(255), Random().nextInt(255));


  Contact({this.name, this.profile, this.score, this.type});
  
}