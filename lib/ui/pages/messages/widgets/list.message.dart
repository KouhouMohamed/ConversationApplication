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
  Color myColor;

  ListMessage({this.contact});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessageBloc,MessageState>(
      builder: (context,state){
       /* if(state.contact == null) {
          print("null");
          context.read<MessageBloc>().add(GetContactEvent(contact: contact));
          print("null tta ${state.contact.name} ");
        }*/
        return Expanded(
          child: ListView.builder(
              itemCount: contact.messages.length,
              itemBuilder: (context, index) {
                return ItemMessage(
                  message: contact.messages[index],
                  myColor: contact.myColor,
                );

               /* if (contact.messages[index].type == TypeMessage.RECEIVE) {
                  myAlignement = MainAxisAlignment.start;
                  myColor = contact.myColor;
                }
                else {
                  myAlignement = MainAxisAlignment.end;
                  myColor = Colors.lightBlueAccent;
                }
                return Row(
                  mainAxisAlignment: myAlignement,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: myColor
                        ),

                        child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("${contact.messages[index].content}"),
                            )
                        ),
                      ),
                    )
                  ],
                );*/
              }
          ),
        );
      },
    );

  }
}
