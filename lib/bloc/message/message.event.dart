import 'package:contacts_app/model/contact.model.dart';

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