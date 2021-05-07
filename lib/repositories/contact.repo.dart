import 'dart:math';

import 'package:contacts_app/model/contact.model.dart';
import 'package:contacts_app/enum/type.contact.enum.dart';

class ContactRepository{

  Map<int,Contact> contacts = {
    1:new Contact(name: "kouhou",profile: "KO",score: 1234,type: TypeContact.STUDENT),
    2:new Contact(name: "mohamed",profile: "MO",score: 5678,type: TypeContact.STUDENT),
    3:new Contact(name: "aicha",profile: "AI",score: 9876,type: TypeContact.DEVELOPER),
    4:new Contact(name: "ibrahim",profile: "IB",score: 5432,type: TypeContact.DEVELOPER),
    5:new Contact(name: "rachida",profile: "RA",score: 1098,type: TypeContact.STUDENT),
  };

  Future<List<Contact>> allConatcts() async{
    var future = await Future.delayed(Duration(seconds: 1));
    int rand = Random().nextInt(10);
    if(rand<1){
      throw new Exception("Interner error");
    }
    else{
        return contacts.values.toList();
    }
  }

  Future<List<Contact>> contactsByType(TypeContact type) async{
    var future = await Future.delayed(Duration(seconds: 1));
    int rand = Random().nextInt(10);
    if(rand>1){
      throw new Exception("Interner error");
    }
    else{
      return contacts.values.toList().where((element) => element.type==type).toList();
    }
  }

}