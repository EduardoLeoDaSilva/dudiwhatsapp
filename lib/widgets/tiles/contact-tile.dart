import 'dart:ui';

import 'package:dudiwhatsapp/models/messages.dart';
import 'package:dudiwhatsapp/models/user.dart';
import 'package:dudiwhatsapp/pages/chat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContactTile extends StatelessWidget {
  ContactTile(
      {Key? key,
      required int newMessages,
      required DateTime lastDate,
      required String frontMessage,
      required this.messages})
      : super(key: key);
 
  List<Message> messages;
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ChatPage()),);
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(
                  child: CircleAvatar(),
                  width: 60,
                  height: 60,
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Eduardo Leonardo',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Mensagem teste', style: TextStyle(color: Color.fromRGBO(135, 135, 135, 1)))
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text(
                      '9:30',
                      style: TextStyle(color: Color.fromRGBO(0, 197, 0, 1)),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 25,
                      height: 25,
                      child: Text(
                        '2',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 197, 0, 1),
                          shape: BoxShape.circle),
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  SizedBox(
                    width: 60,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.grey,
                      height: 1,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
