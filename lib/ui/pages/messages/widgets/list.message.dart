import 'package:contacts_app/bloc/message/message.bloc.dart';
import 'package:contacts_app/bloc/message/message.event.dart';
import 'package:contacts_app/bloc/message/message.state.dart';
import 'package:contacts_app/enum/type.message.dart';
import 'package:contacts_app/model/message.model.dart';
import 'package:contacts_app/ui/pages/messages/widgets/item.message.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:contacts_app/model/contact.model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListMessage extends StatelessWidget {
  Contact contact;
  MainAxisAlignment myAlignement;
  ListMessage({this.contact});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessageBloc,MessageState>(
      builder: (context,state){
        return (contact!=null && contact != Contact())?
        Expanded(
          child: ListView.builder(
              itemCount: contact.messages.length,
              itemBuilder: (context, index) {
                return ItemMessage(
                  message: contact.messages[index],
                  contact: contact,
                );
              }
          ),
        ):Container();
      },
    );

  }
}
