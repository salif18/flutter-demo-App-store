import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({super.key, required this.data});
  // ignore: prefer_typing_uninitialized_variables
  final data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 380,
          child:Center(
          child:Text(data['details'] as String, style: TextStyle(fontSize: 18),),
    )
    );
  }
}