import 'package:contacts_app/model/contact.model.dart';
import 'package:contacts_app/ui/pages/message_and_contact/list.contact.dart';
import 'package:flutter/material.dart';

class ContactAndMessagePage extends StatelessWidget {

  Contact contact;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Conversations") ,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Expanded(
          child: Column(
            children: [
              ContactList(),

            ],
          ),
        ),
      ) ,


    );
  }
}
