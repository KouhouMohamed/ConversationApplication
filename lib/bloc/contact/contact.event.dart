import 'package:contacts_app/model/contact.model.dart';
import 'package:contacts_app/model/message.model.dart';

abstract class ContactEvent{}

class LoadAllContactEvent extends ContactEvent{}
class LoadStudentsContactEvent extends ContactEvent{}
class LoadDevelopersContactEvent extends ContactEvent{}
class DeleteMessageEvent extends ContactEvent{
  Contact contact;
  Message messageToDelete;
  DeleteMessageEvent({this.contact});
}

class AddMessageToDeleteList extends ContactEvent{
  Contact contact;
  Message messageToDelete;
  AddMessageToDeleteList({this.contact, this.messageToDelete});
}