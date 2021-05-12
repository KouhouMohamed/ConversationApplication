import 'file:///C:/Users/medko/AndroidStudioProjects/contacts_app/lib/bloc/contact/contact.bloc.dart';
import 'file:///C:/Users/medko/AndroidStudioProjects/contacts_app/lib/bloc/contact/contact.state.dart';
import 'file:///C:/Users/medko/AndroidStudioProjects/contacts_app/lib/bloc/contact/contact.event.dart';
import 'package:contacts_app/ui/pages/message_and_contact/contact.item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactBloc,ContactState>(
        builder: (context,state){
          context.read<ContactBloc>().add(LoadAllContactEvent());
         // print(state.contacts.length);
            return Expanded(
                child:ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: state.contacts.length,
                  itemBuilder: (context,index){

                    return ItemContact(contact: state.contacts[index],
                    );
                  },
                )
            );
        },
    );
  }
}

class MyList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: InkWell(
        onTap: (){},
        child: ListTile(
          title: Text("KOUHOU MOHAMED"),
        ),
      ),
    );
  }

}
