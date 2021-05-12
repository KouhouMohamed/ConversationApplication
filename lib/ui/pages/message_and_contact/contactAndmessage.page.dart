import 'package:contacts_app/bloc/message/message.bloc.dart';
import 'package:contacts_app/bloc/message/message.state.dart';
import 'package:contacts_app/model/contact.model.dart';
import 'package:contacts_app/ui/pages/message_and_contact/list.contact.dart';
import 'package:contacts_app/ui/pages/messages/widgets/conversation.dart';
import 'package:contacts_app/ui/pages/messages/widgets/list.message.dart';
import 'package:contacts_app/ui/pages/messages/widgets/message.send.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactAndMessagePage extends StatelessWidget {

  Contact contact;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Conversations") ,
      ),
      body: BlocBuilder<MessageBloc,MessageState>(
        builder: (context,state){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               // (state.contact != null)?Text(state.contact.name):Text("enset"),
                ContactList(),
                ListMessage(contact: state.contact),
                SendMessage(contact: state.contact),



              ],
            ),
          );
        },
      ) ,


    );
  }
}
