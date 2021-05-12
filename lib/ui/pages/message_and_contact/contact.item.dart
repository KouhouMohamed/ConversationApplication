import 'package:contacts_app/bloc/message/message.bloc.dart';
import 'package:contacts_app/bloc/message/message.event.dart';
import 'package:contacts_app/bloc/message/message.state.dart';
import 'package:contacts_app/model/contact.model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class ItemContact extends StatelessWidget {
  Contact contact;

  ItemContact({this.contact});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessageBloc, MessageState>(builder: (context, state) {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
                height: 50,
                width: 120,
                decoration: BoxDecoration(
                    border: Border.all(
                        width: (state.contact == contact) ? 2 : 0,
                        color: (state.contact == contact)
                            ? Colors.red
                            : Colors.white),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue)
                /*decoration: BoxDecoration(
                  border: Border.all(
                      width: 2,
                      color: Colors.black87
                  ),
                  color: Colors.blue,
                )*/
                ,
                child: ListTile(
                  onTap: () {
                    print("-**** tap");
                    context
                        .read<MessageBloc>()
                        .add(GetContactEvent(contact: contact));
                  },
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        contact.name,
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      ),
                      Text(
                        "${contact.score}",
                        style: TextStyle(fontSize: 6, color: Colors.black),
                      ),
                    ],
                  ),
                )),
          ),
        ],
      );
    });
  }
}
