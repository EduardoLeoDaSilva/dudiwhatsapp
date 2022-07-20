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
        appBar: AppBar(
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
          children: [
            Expanded(
              child: ListView(
                children: [
                  Text('data'),
                  Text('data'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(child: TextField(
                    decoration: InputDecoration(
                      suffix: Container(
                        width: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(child: IconButton(onPressed: (){}, icon: Icon(Icons.attach_file))),
                            Expanded(child: IconButton(onPressed: (){}, icon: Icon(Icons.monetization_on_rounded))),
                            Expanded(child: IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt))),
                          ],
                        ),
                      )
                    ),
                  )),
                  Container(
                    width: 50,
                    height: 50,
                    decoration:
                        BoxDecoration(color: Colors.green, shape: BoxShape.circle),
                  )
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
