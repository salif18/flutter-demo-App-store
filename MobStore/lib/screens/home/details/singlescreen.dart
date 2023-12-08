import 'package:flutter/material.dart';

class SingleScreen extends StatelessWidget {
  const SingleScreen({super.key , this.data});

// ignore: prefer_typing_uninitialized_variables
final data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomScrollView(
      slivers: [
            SliverAppBar(
              expandedHeight: 300.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(data['title'] as String, 
                style:const TextStyle(color: Colors.black)
                ),
                background: Hero(
                  tag: data,
                  child:Image.asset(data['photo'],
                  fit: BoxFit.cover,
                  height: 360,
                )),
              ),
            ),
            SliverPersistentHeader(
              delegate: MySliverPersistentHeaderDelegate(),
              pinned: true,
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 200.0,
                color: Colors.blue,
                alignment: Alignment.center,
                child: const Text('Content Goes Here'),
              ),
            ),
      ],
    ),
    );
  }
}

class MySliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  double get minExtent => 60.0;

  @override
  double get maxExtent => 120.0;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      decoration: const BoxDecoration(
      color: Colors.green,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(40),
        topRight: Radius.circular(40)
        
      )
      ),
      alignment: Alignment.center,
      
      child: const Text('Persistent Header'),
      
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
