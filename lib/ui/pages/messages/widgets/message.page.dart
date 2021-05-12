import 'package:contacts_app/bloc/message/message.event.dart';
import 'package:contacts_app/bloc/message/message.bloc.dart';
import 'package:contacts_app/bloc/message/message.state.dart';
import 'package:contacts_app/model/contact.model.dart';
import 'package:contacts_app/ui/pages/messages/widgets/conversation.dart';
import 'package:contacts_app/ui/pages/messages/widgets/list.message.dart';
import 'package:contacts_app/ui/pages/messages/widgets/message.send.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MessagePage extends StatelessWidget {
  Contact contact;
  TextEditingController textEditingController = new TextEditingController();
  MessagePage({this.contact});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessageBloc,MessageState>(builder: (context,state){
      return Scaffold(
          appBar: AppBar(
            title: Text(contact.name),

            actions: [
              (state.messagesToDelete==null || state.messagesToDelete.length == 0)?CircleAvatar(
                child: Text(contact.profile),
                backgroundColor: Colors.red,
              ):
              IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: (){
                    context.read<MessageBloc>().add(DeleteMessageEvent(
                      contact: contact
                    ));
                  })

            ],
          ),
          body:Conversation(
            contact: contact,
          )

      );
    });
  }
}
