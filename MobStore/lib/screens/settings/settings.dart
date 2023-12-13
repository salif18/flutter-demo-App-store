import 'package:flutter/material.dart';

class MySettings extends StatelessWidget {
  const MySettings({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Settings"),
          bottom: const TabBar(tabs: [
            Tab(
                icon: Icon(
              Icons.notifications,
            )),
            Tab(icon: Icon(Icons.security)),
            Tab(icon: Icon(Icons.label_important_outline_rounded)),
            Tab(icon: Icon(Icons.computer_outlined))
          ]),
        ),
        body: const TabBarView(
          children: [
            Column(children: [Text('first page')]),
            Column(children: [Text('second page')]),
            Column(children: [Text('thirst page')]),
            Column(children: [Text('forst page')])
          ],
        ),
      ),
    );
  }
}
