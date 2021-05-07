import 'file:///C:/Users/medko/AndroidStudioProjects/contacts_app/lib/bloc/contact/contact.bloc.dart';
import 'file:///C:/Users/medko/AndroidStudioProjects/contacts_app/lib/bloc/contact/contact.event.dart';
import 'file:///C:/Users/medko/AndroidStudioProjects/contacts_app/lib/bloc/contact/contact.state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class RaisedContactButton extends StatelessWidget {
  String label;
  ContactEvent event;

  RaisedContactButton({this.label, this.event});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactBloc,ContactState>(
      builder: (context,state){
        return Container(
          padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
          decoration: BoxDecoration(
              border: Border.all(
                  width: (state.currentEvent.runtimeType == event.runtimeType)?2:0,
                  color: (state.currentEvent.runtimeType == event.runtimeType)?Colors.red:Colors.white
              )
          ),
          child: ElevatedButton(

            onPressed: (){
              context.read<ContactBloc>().add(event);
            },
            child: Text(label,
              style: TextStyle(
                  fontSize: 10,
                  color: Colors.white
              ),
            ),

          ),
        );
      },

    );
    
  }
}
