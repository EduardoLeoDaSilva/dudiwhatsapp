import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  ChatTile(
      {Key? key,
      required this.message,
     this.imageUrl,
      required this.color,
      required this.alignment})
      : super(key: key);

  String message;
  String? imageUrl;
  Color color;
  Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Align(
        alignment: alignment,
        child: Container(
          constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.90),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(color: color,borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              imageUrl != null ? Image.network('null') : Container(width: 0,height: 0,),
              Text(
                message,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
