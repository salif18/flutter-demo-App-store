import "package:flutter/material.dart";

class MySliverPersiste extends SliverPersistentHeaderDelegate {
 
 final  data;
 final double expandedHeight;
 final double roundContainerHeight;

 MySliverPersiste(
  this.data,
  this.expandedHeight,
  this.roundContainerHeight,
 );

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

      child: Image.asset(data['photo']),
        
      
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
