import 'package:bloc/bloc.dart';
import 'file:///C:/Users/medko/AndroidStudioProjects/contacts_app/lib/bloc/contact/contact.event.dart';
import 'file:///C:/Users/medko/AndroidStudioProjects/contacts_app/lib/bloc/contact/contact.state.dart';
import 'package:contacts_app/enum/request.state.dart';
import 'package:contacts_app/enum/type.contact.enum.dart';
import 'package:contacts_app/model/contact.model.dart';
import 'package:contacts_app/repositories/contact.repo.dart';

class ContactBloc extends Bloc<ContactEvent,ContactState>{
  ContactRepository contactRepository;
  ContactBloc({ContactState initialState, this.contactRepository}) : super(initialState);

  @override
  Stream<ContactState> mapEventToState(ContactEvent event) async* {
    if(event is LoadAllContactEvent){
        yield ContactState(contacts: state.contacts,requestState: RequestState.LOADING,currentEvent: event);
        try {
          List<Contact> data = await contactRepository.allConatcts();
          yield ContactState(contacts: data,requestState: RequestState.LOADED,currentEvent: event);
        }
        catch (e) {
         yield ContactState(contacts: state.contacts,errorMessage:e.message,requestState: RequestState.ERROR,currentEvent: event);
        }

    }
    else if(event is LoadStudentsContactEvent){

      yield ContactState(contacts: state.contacts,requestState: RequestState.LOADING,currentEvent: event);
      try {
        List<Contact> data = await contactRepository.contactsByType(TypeContact.STUDENT);
        yield ContactState(contacts: data,requestState: RequestState.LOADED,currentEvent: event);
      }
      catch (e) {
        yield ContactState(contacts: state.contacts,errorMessage:e.message,requestState: RequestState.ERROR,currentEvent: event);
      }
    }
    else if(event is LoadDevelopersContactEvent){

      yield ContactState(contacts: state.contacts,requestState: RequestState.LOADING,currentEvent: event);
      try {
        List<Contact> data = await contactRepository.contactsByType(TypeContact.DEVELOPER);
        yield ContactState(contacts: data,requestState: RequestState.LOADED,currentEvent: event);
      }
      catch (e) {
        yield ContactState(contacts: state.contacts,errorMessage:e.message,requestState: RequestState.ERROR,currentEvent: event);
      }
    }
  }

}