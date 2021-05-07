import 'file:///C:/Users/medko/AndroidStudioProjects/contacts_app/lib/bloc/contact/contact.bloc.dart';
//import 'package:contacts_app/bloc/contact/contact.bloc.dart';
import 'file:///C:/Users/medko/AndroidStudioProjects/contacts_app/lib/bloc/contact/contact.state.dart';
import 'package:contacts_app/bloc/contact/contact.event.dart';
import 'package:contacts_app/enum/type.message.dart';
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
    myColor = contact.myColor;
    if (type== TypeMessage.RECEIVE) {
      myAlignment = MainAxisAlignment.start;
    }
    else {
      myAlignment = MainAxisAlignment.end;
      myColor = Colors.lightBlueAccent;
    }
    /*return */
    return BlocBuilder<ContactBloc,ContactState>(
        builder: (context,state){
          return ListTile(
            tileColor: tilColor,
            onLongPress:(){
              //context.read<ContactBloc>().add();
              print("***************");
            } ,
            title: Row(
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
          );
        });
  }


}