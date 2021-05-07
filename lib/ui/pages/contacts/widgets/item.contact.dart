import 'package:contacts_app/model/contact.model.dart';
import 'package:contacts_app/ui/pages/messages/widgets/message.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemContact extends StatelessWidget {
  Contact contact;
  ItemContact({this.contact});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        //Navigator.pop(context);
        Navigator.push(context, MaterialPageRoute(
            builder: (context)=>MessagePage(contact: contact,)
        )
        );
      },
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                child: Text(contact.profile),
                backgroundColor: contact.myColor,
              ),
              SizedBox(width: 6,),
              Text(contact.name)
            ],
          ),
          CircleAvatar(
              child: Text('${contact.score}'),
              backgroundColor: contact.myColor,
          )
        ],
      ),
    );
  }
}
