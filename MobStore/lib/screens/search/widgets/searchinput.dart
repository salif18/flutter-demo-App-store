import 'package:flutter/material.dart';

class MySearchInput extends StatefulWidget {
  const MySearchInput({super.key});

  @override
  State<MySearchInput> createState() => _MySearchInputState();
}

class _MySearchInputState extends State<MySearchInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
      child: Stack(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "search",
              fillColor: Colors.white,
              filled: true,
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
                ),
            ),
          ),
          Positioned(
            right: 12,
            top: 20,
            child:Icon(Icons.mic_outlined)
            )
        ],
      ),
    );
  }
}