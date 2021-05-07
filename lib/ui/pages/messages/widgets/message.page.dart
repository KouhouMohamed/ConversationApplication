import 'package:contacts_app/model/contact.model.dart';
import 'package:contacts_app/model/message.model.dart';
import 'package:contacts_app/ui/pages/messages/widgets/item.message.dart';
import 'package:contacts_app/ui/pages/messages/widgets/list.message.dart';
import 'package:contacts_app/ui/pages/messages/widgets/message.send.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  Contact contact;
  TextEditingController textEditingController = new TextEditingController();
  MessagePage({this.contact});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(contact.name),

        actions: [
          (contact.messagesToDelete.length != 0)?IconButton(
            icon: Icon(Icons.delete),
            onPressed: (){
                contact.messagesToDelete.forEach((element) {
                  contact.messages.remove(element);
                });
            }):
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

              SendMessage(contact: contact)
            ],
          ),
        ),
      )

    );
  }
}
