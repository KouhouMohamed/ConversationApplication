import 'package:contacts_app/model/contact.model.dart';
import 'package:contacts_app/ui/pages/messages/widgets/list.message.dart';
import 'package:contacts_app/ui/pages/messages/widgets/message.send.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  List<String> test = ["kouhou","mohamde","enset"];
  Contact contact;
  TextEditingController textEditingController = new TextEditingController();
  MessagePage({this.contact});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(contact.name),
        actions: [
          CircleAvatar(
            child: Text(contact.profile),
            backgroundColor: contact.myColor,
          )
        ],
      ),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Expanded(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ListMessage(contact: contact),
              /*Expanded(
                child: ListView.builder(
                  itemCount: test.length,
                  itemBuilder: (context,index){
                    return Text(test[index]);
                  },
                ),
              ),*/
              SendMessage(contact: contact)
            ],
          ),
        ),
      )
      /*Expanded(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ListMessage(contact: contact),
              SendMessage()
            ],
          ),
        )
      )*/
        //SendMessage()
          //ListMessage(contact:contact)
    );
  }
}
