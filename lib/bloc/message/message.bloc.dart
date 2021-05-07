
import 'package:bloc/bloc.dart';
import 'package:contacts_app/bloc/message/message.event.dart';
import 'package:contacts_app/bloc/message/message.state.dart';
import 'package:contacts_app/enum/type.message.dart';
import 'package:contacts_app/model/message.model.dart';

class MessageBloc extends Bloc<MessageEvent,MessageState>{
  MessageBloc({initialState}) : super(initialState);

  @override
  Stream<MessageState> mapEventToState(MessageEvent event) async*{
    if(event is GetContactEvent){
      yield MessageState(contact: event.contact,messages: event.contact.messages);
    }
    if(event is SendMessageEvent){
      yield MessageState(contact: event.contact,messages: event.contact.messages);
      List<Message> data = event.contact.messages;
     Message message = Message(content: event.messageToSend,type:TypeMessage.SEND);
     data.add(message);
     message = Message(content: "Answer to '${event.messageToSend}'",type:TypeMessage.RECEIVE);
     data.add(message);
     event.contact.messages = data;
     yield MessageState(messages: data);
    }
  }

}
