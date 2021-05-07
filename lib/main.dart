import 'file:///C:/Users/medko/AndroidStudioProjects/contacts_app/lib/bloc/contact/contact.bloc.dart';
import 'file:///C:/Users/medko/AndroidStudioProjects/contacts_app/lib/bloc/contact/contact.state.dart';
import 'package:contacts_app/bloc/message/message.bloc.dart';
import 'package:contacts_app/bloc/message/message.state.dart';
import 'package:contacts_app/enum/request.state.dart';
import 'package:contacts_app/model/contact.model.dart';
import 'package:contacts_app/repositories/contact.repo.dart';
import 'package:contacts_app/ui/pages/message_and_contact/contactAndmessage.page.dart';
import 'file:///C:/Users/medko/AndroidStudioProjects/contacts_app/lib/ui/pages/contacts/widgets/contact.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
void main() {
  GetIt.instance.registerLazySingleton(() => ContactRepository());
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>ContactBloc(
            initialState: ContactState(
              contacts: [],
              errorMessage: '',
              requestState: RequestState.NONE
            ),
            contactRepository: GetIt.instance<ContactRepository>()),),
        BlocProvider(create: (context)=>MessageBloc(
          initialState: MessageState(
            messages: [],
            contact: Contact()
          )
        ),)
      ],
      child: MaterialApp(
        theme: ThemeData(primaryColor: Colors.purpleAccent),
        routes: {
          '/contacts': (context) => ContactPage(),
          '/messages':(context) => ContactAndMessagePage(),
        },
        initialRoute: '/contacts',
      ),
    );
  }
}

