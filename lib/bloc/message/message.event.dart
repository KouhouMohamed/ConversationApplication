import 'package:contacts_app/model/contact.model.dart';
import 'package:contacts_app/model/message.model.dart';

abstract class MessageEvent{
}

class SendMessageEvent extends MessageEvent{
  String messageToSend;
  Contact contact;
  SendMessageEvent({this.contact,this.messageToSend});
}
class GetContactEvent extends MessageEvent{
  Contact contact;
  GetContactEvent({this.contact});
}
class DeleteMessageEvent extends MessageEvent{
  Contact contact;
  DeleteMessageEvent({this.contact});
}

class AddMessageToDeleteList extends MessageEvent{
  Contact contact;
  Message messageToDelete;
  AddMessageToDeleteList({this.contact, this.messageToDelete});
}

class RemoveMessageFromDeleteList extends MessageEvent{
  Contact contact;
  Message messageToDelete;
  RemoveMessageFromDeleteList({this.contact, this.messageToDelete});
}