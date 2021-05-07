import 'file:///C:/Users/medko/AndroidStudioProjects/contacts_app/lib/bloc/contact/contact.event.dart';
import 'package:contacts_app/enum/request.state.dart';
import 'package:contacts_app/model/contact.model.dart';

class ContactState{
  List<Contact> contacts;
  RequestState requestState = RequestState.NONE;
  String errorMessage;
  ContactEvent currentEvent;

  ContactState({this.contacts, this.requestState, this.errorMessage,this.currentEvent});
}