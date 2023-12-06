import 'package:flutter/material.dart';

class BarSearch extends StatefulWidget {
  const BarSearch({super.key});

  @override
  State<BarSearch> createState() => _BarSearchState();
}

class _BarSearchState extends State<BarSearch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Stack(
        children: [
          TextField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              hintText: "Search",
              prefixIcon:const Icon(Icons.search, size:33) ,
              hintStyle: TextStyle(fontWeight: FontWeight.w500 ,color: Colors.grey.withOpacity(0.6)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
         
          const Positioned(
              right: 20, top: 15, child: Icon(Icons.mic_outlined, size: 33)),
        ],
      ),
    );
  }
}
