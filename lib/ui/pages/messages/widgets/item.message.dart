/*
import 'file:///C:/Users/medko/AndroidStudioProjects/contacts_app/lib/bloc/message/message.bloc.dart';
import 'file:///C:/Users/medko/AndroidStudioProjects/contacts_app/lib/bloc/message/message.state.dart';
import 'file:///C:/Users/medko/AndroidStudioProjects/contacts_app/lib/bloc/message/message.event.dart';
*/

import 'package:contacts_app/bloc/message/message.bloc.dart';
import 'package:contacts_app/bloc/message/message.event.dart';
import 'package:contacts_app/bloc/message/message.state.dart';
import 'package:contacts_app/enum/type.message.dart';
import 'package:contacts_app/model/contact.model.dart';
import 'package:contacts_app/model/message.model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemMessage extends StatelessWidget{
  Contact contact;
  Message message;
  TypeMessage type;
  MainAxisAlignment myAlignment;
  Color myColor;
  Color tilColor=Colors.white;
  ItemMessage({this.message, this.contact});

  @override
  Widget build(BuildContext context) {

    type = message.type;
    if (type== TypeMessage.RECEIVE) {
      myAlignment = MainAxisAlignment.start;
      myColor = Colors.lightGreen;
    }
    else {
      myAlignment = MainAxisAlignment.end;
      myColor = Colors.lightBlueAccent;
    }
    /*return */
    return BlocBuilder<MessageBloc,MessageState>(
        builder: (context,state){
          return ListTile(
            tileColor: tilColor,
            onTap: (){
              if(contact.messagesToDelete != null &&
                  contact.messagesToDelete.length != 0 ) {
                if (contact.messagesToDelete.contains(message)) {
                  context.read<MessageBloc>().add(
                      RemoveMessageFromDeleteList(
                          contact: contact,
                          messageToDelete: message
                      )
                  );
                }
                else{
                  context.read<MessageBloc>().add(AddMessageToDeleteList(
                      messageToDelete: message,
                      contact: contact
                  ));
                  // print()
                }
              }
            },
            onLongPress:(){
              context.read<MessageBloc>().add(
                  AddMessageToDeleteList(
                    contact: contact,
                    messageToDelete: message
                  )
              );
            } ,
            title: Container(
              color: (contact.messagesToDelete.contains(message))?Colors.greenAccent:Colors.white,
              child: Row(

                mainAxisAlignment: myAlignment,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: myColor
                      ),

                      child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("${message.content}"),
                          )
                      ),
                    ),
                  )
                ],

              ),
            ),
          );
        });
  }


}