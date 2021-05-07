import 'package:contacts_app/ui/pages/contacts/widgets/buttons.widget.dart';
import 'package:contacts_app/ui/pages/contacts/widgets/list.contact.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contacts"),),
      body:Column(
          children: [
            ButtonsWidget(),
            ListContact()
          ],
        ),

    );
  }
}
