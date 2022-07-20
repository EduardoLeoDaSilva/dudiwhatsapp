import 'package:flutter/material.dart';

class CustomTabBarWithIcon extends StatelessWidget
    implements PreferredSizeWidget {
  CustomTabBarWithIcon(
      {Key? key, required this.appBarContext, required this.function})
      : super(key: key);

  BuildContext appBarContext;
  Function function;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () => function,
          icon: const Icon(Icons.camera_alt_rounded),
        ),
        Expanded(
          child: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.white,
              indicatorWeight: 6,
              automaticIndicatorColorAdjustment: true,
              splashFactory: NoSplash.splashFactory,
              tabs: [
                Tab(
                  child: Text('CONVERSAS'),
                ),
                Tab(
                  child: Text('STATUS'),
                ),
                Tab(
                  child: Text('CHAMADAS'),
                ),
              ]),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>
      Size.fromHeight(MediaQuery.of(appBarContext).size.height * 0.1);
}
