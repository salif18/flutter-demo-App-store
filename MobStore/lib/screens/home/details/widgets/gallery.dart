import 'package:flutter/material.dart';

class MyGallerys extends StatelessWidget {
  const MyGallerys({super.key , required this.data});
final data;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
     child: ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context , int index){
         return GestureDetector(
          child:Container(
            height: 140,
            width: 200,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 209, 209, 209),
              borderRadius: BorderRadius.circular(20)
            ),
          ),
         );
      }, 
      separatorBuilder: ((BuildContext context, int index) => const SizedBox(width: 20,)), 
      itemCount: 5
      ),
    );
  }
}