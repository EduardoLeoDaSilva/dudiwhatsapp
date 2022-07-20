import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContactTile extends StatelessWidget {
  ContactTile(
      {Key? key,
      required int newMessages,
      required DateTime lastDate,
      required String frontMessage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(
                child: CircleAvatar(),
                width: 50,
                height: 50,
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Eduardo Leonardo'),
                    Text('Mensagem teste')
                  ],
                ),
              ),
              Column(
                children: const [Text('9:30'), Text('2')],
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
    );
  }
}
