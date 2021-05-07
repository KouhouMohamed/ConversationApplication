import 'file:///C:/Users/medko/AndroidStudioProjects/contacts_app/lib/bloc/contact/contact.bloc.dart';
import 'file:///C:/Users/medko/AndroidStudioProjects/contacts_app/lib/bloc/contact/contact.state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ErrorMessage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactBloc,ContactState>(
      builder: (context,state){
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Internet Error"),
              RaisedButton(
                onPressed: (){
                  context.read<ContactBloc>().add(state.currentEvent);
                },
                child: Text("Retry",
                  style:TextStyle(
                      color: Colors.deepOrange
                  ) ,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
