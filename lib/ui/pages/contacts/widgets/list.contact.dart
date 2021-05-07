import 'file:///C:/Users/medko/AndroidStudioProjects/contacts_app/lib/bloc/contact/contact.bloc.dart';
import 'file:///C:/Users/medko/AndroidStudioProjects/contacts_app/lib/bloc/contact/contact.state.dart';
import 'package:contacts_app/enum/request.state.dart';
import 'package:contacts_app/ui/pages/contacts/widgets/item.contact.dart';
import 'package:contacts_app/ui/pages/error.message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<ContactBloc,ContactState>(
        builder: (context,state){
          if(state.requestState == RequestState.LOADING){
            return Center(child: CircularProgressIndicator());
          }
          if(state.requestState == RequestState.ERROR){
            return Center(child: ErrorMessage());
          }
          else if(state.requestState == RequestState.LOADED){
            return  Expanded(
                child:ListView.builder(
                  itemCount: state.contacts.length,
                  itemBuilder: (context,index){
                    return ItemContact(contact: state.contacts[index],
                    );
                  },)
            );
          }
          else{
            return Container();
          }
        },
      ),
    );
  }
}
