import 'package:contacts_app/model/contact.model.dart';
import 'package:contacts_app/ui/pages/messages/widgets/list.message.dart';
import 'package:contacts_app/ui/pages/messages/widgets/message.send.dart';
import 'package:flutter/material.dart';

class Conversation extends StatelessWidget {
  Contact contact;
  Conversation({this.contact});
  @override
  Widget build(BuildContext context) {
    return (contact!=null && contact != Contact())?
    Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child:  Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ListMessage(contact: contact),

              SendMessage(contact: contact)
            ],
          ),
      ),
    ):Container(
      child: Text("KOUHOU"),
    );
  }
}
