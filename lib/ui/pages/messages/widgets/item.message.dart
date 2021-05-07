import 'package:contacts_app/enum/type.message.dart';
import 'package:flutter/material.dart';

class ItemMessage extends StatelessWidget{
  String content;
  TypeMessage type;
  MainAxisAlignment myAlignment;
  Color myColor;
  ItemMessage({this.content,this.type, this.myColor});

  @override
  Widget build(BuildContext context) {


    if (type== TypeMessage.RECEIVE) {
      myAlignment = MainAxisAlignment.start;
    }
    else {
      myAlignment = MainAxisAlignment.end;
      myColor = Colors.lightBlueAccent;
    }
    /*return */
    return ListTile(
      onLongPress:(){

      } ,
      title: Row(
        mainAxisAlignment: myAlignment,
        children: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: myColor
              ),

              child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("$content"),
                  )
              ),
            ),
          )
        ],
      ),
    );
  }


}