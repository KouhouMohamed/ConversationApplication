import 'package:contacts_app/model/contact.model.dart';
import 'package:flutter/material.dart';

class ItemContact extends StatelessWidget {
  Contact contact;
  ItemContact({this.contact});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Colors.black87
        ),
        color: Colors.blue,

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(contact.name,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black
            ),
          ),
          Text("${contact.score}",
            style: TextStyle(
                fontSize: 6,
                color: Colors.blue
            ),
          )

        ],
      ),
    );
  }
}
