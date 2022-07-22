import 'package:dudiwhatsapp/widgets/customsContainer/message-container.dart';
import 'package:dudiwhatsapp/widgets/tiles/chat-tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:Color.fromARGB(255, 22, 21, 21),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(7, 94, 84, 1),
          leadingWidth: 100,
          leading: Row(
            children: [Icon(Icons.arrow_back_outlined), CircleAvatar()],
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.video_call)),
            IconButton(onPressed: () {}, icon: Icon(Icons.call)),
            PopupMenuButton(
              itemBuilder: (context) {
                return [PopupMenuItem(child: Text('Teste'))];
              },
            ),
          ],
        ),
        body: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                color: Color.fromARGB(255, 22, 21, 21),
                child: ListView(
                  reverse: true,
                  padding: EdgeInsets.only(top: 5,right: 10,left: 10,bottom: 5),
                  children: [
                    ChatTile(message: 'Teste', color: Colors.green, alignment: Alignment.topRight),
                    ChatTile(
                        message:
                            '1ifajipfjapfiajpfjaphapehgapehgapieghapigheaighapehgapehg', alignment: Alignment.topLeft,
                        color: Colors.green),ChatTile(message: 'Teste', color: Colors.green, alignment: Alignment.topRight),
                    ChatTile(
                        message:
                            '1ifajipfjapfiajpfjaphapehgapehgapieghapigheaighapehgapehg', alignment: Alignment.topLeft,
                        color: Colors.green),ChatTile(message: 'Teste', color: Colors.green, alignment: Alignment.topRight),
                    ChatTile(
                        message:
                            '1ifajipfjapfiajpfjaphapehgapehgapieghapigheaighapehgapehg', alignment: Alignment.topLeft,
                        color: Colors.green),ChatTile(message: 'Teste', color: Colors.green, alignment: Alignment.topRight),
                    ChatTile(
                        message:
                            '1ifajipfjapfiajpfjaphapehgapehgapieghapigheaighapehgapehg', alignment: Alignment.topLeft,
                        color: Colors.green),ChatTile(message: 'Teste', color: Colors.green, alignment: Alignment.topRight),
                    ChatTile(
                        message:
                            '1ifajipfjapfiajpfjaphapehgapehgapieghapigheaighapehgapehg', alignment: Alignment.topLeft,
                        color: Colors.green),ChatTile(message: 'Teste', color: Colors.green, alignment: Alignment.topRight),
                    ChatTile(
                        message:
                            '1ifajipfjapfiajpfjaphapehgapehgapieghapigheaighapehgapehgfawfawfawfawgwagaw', alignment: Alignment.topLeft,
                        color: Colors.green),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                child: Row(
                  children: [
                    Expanded(
                        child: TextField(
                          textAlignVertical: TextAlignVertical.center,
                          
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        focusColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:Colors.transparent, style: BorderStyle.none),
                          borderRadius: BorderRadius.circular(50)
                         ),
                        suffixIconColor: Colors.grey,
                         border: OutlineInputBorder(
                          borderSide: BorderSide(color:Colors.transparent, style: BorderStyle.none),
                          borderRadius: BorderRadius.circular(50)
                         ),
                          suffix: Container(
                        width: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.attach_file))),
                            Expanded(
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.monetization_on_rounded))),
                            Expanded(
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.camera_alt))),
                          ],
                        ),
                      )),
                    )),
                    Container(
                      alignment: Alignment.center,
                      child: Icon(Icons.send, color: Colors.white),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.green, shape: BoxShape.circle),
                    )
                  ],
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
