import 'file:///C:/Users/medko/AndroidStudioProjects/contacts_app/lib/bloc/contact/contact.event.dart';
import 'package:contacts_app/ui/pages/contacts/widgets/raise.button.dart';
import 'package:flutter/material.dart';

class ButtonsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RaisedContactButton(event:LoadAllContactEvent(),label:"All Contacts"),
          RaisedContactButton(event:LoadStudentsContactEvent(),label: "Students Contacts"),
          RaisedContactButton(event:LoadDevelopersContactEvent(),label: "Developers Contacts"),
        ],
      ),
    );
  }
}
