import 'package:contacts_app/bloc/message/message.bloc.dart';
import 'package:contacts_app/bloc/message/message.event.dart';
import 'package:contacts_app/model/contact.model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class SendMessage extends StatelessWidget {

  Contact contact;
  SendMessage({this.contact});
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return (contact!=null && contact != Contact())?
    Center(
        child: Row(
          children: [
            Expanded(
              child : Container(
                child: TextFormField(
                  controller: textEditingController,
                  decoration: InputDecoration(
                    //icon showen in the left of textField
                      icon: Icon(Icons.message),

                      //space between text and border
                      contentPadding: EdgeInsets.only(left: 20),
                      //border of text field
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.greenAccent, width: 1,
                          )
                      )
                  ),
                ),
              ),
            ),
            IconButton(
                icon: Icon(Icons.send
                  , color: Colors.indigoAccent,
                ),
                onPressed: (){
                  print("*************${contact.name}");
                  context.read<MessageBloc>().add(SendMessageEvent(

                    contact: contact,
                    messageToSend: textEditingController.text
                  )
                     );
                  textEditingController.text = "";
                }
            ),
      ]
        )

    ):Container();
  }
}
