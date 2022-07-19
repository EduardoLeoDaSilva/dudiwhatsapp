import 'package:dudiwhatsapp/widgets/preferredSizeWidgets/preferred-size.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: const Text(
                'DudiZap',
                style: TextStyle(fontSize: 27),
              ),
              actions: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                PopupMenuButton<String>(
                  itemBuilder: (context) {
                    return const [
                      PopupMenuItem(child: Text('Configurações')),
                      PopupMenuItem(child: Text('Nada ainda')),
                      PopupMenuItem(child: Text('Nada ainda')),
                    ];
                  },
                ),
              ],
              expandedHeight: 120,
              bottom: CustomTabBarWithIcon(appBarContext: context, function: (){}),
            ),
          ],
        ),
      ),
    );
  }
}
