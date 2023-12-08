import 'package:flutter/material.dart';

class MySettings extends StatelessWidget {
  const MySettings({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, 
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.playlist_add_check_circle,)),
              Tab(icon:Icon(Icons.desktop_mac)),
              Tab(icon:Icon(Icons.devices_sharp)),
              Tab(icon:Icon(Icons.hotel_class_rounded))
            ]
            ),
        ),
        body:const TabBarView(
         children: [
          Column(
            children:[
              Text('first page')
              ]
          ),
           Column(
            children:[Text('second page')]
          ),
           Column(
            children:[Text('thirst page')]
          ),
           Column(
            children:[Text('forst page')]
          )
         ],
        
        ),
      ),
      );
  }
}