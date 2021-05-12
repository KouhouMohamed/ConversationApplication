import 'package:contacts_app/model/contact.model.dart';
import 'package:contacts_app/model/message.model.dart';

class MessageState{
  Contact contact;
  List<Message> messages;

  List<Message> messagesToDelete;
  MessageState({this.contact,this.messages,this.messagesToDelete});
}