import 'package:flutter/material.dart';

class Header extends StatelessWidget {
 const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 15,
        right: 20,
       
      ), 
      decoration:const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors:  [
            Color.fromARGB(255, 157, 1, 255),
            Color.fromARGB(255, 167, 54, 238),
          ]
          )
      ),
      child:const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
       
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Mob Store",
              style: TextStyle(
                fontSize:28, 
                fontWeight: FontWeight.w900, 
                color: Colors.white 
                ),),
                Text("Magasin des applications",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),)
            ],
          ),
          
            Icon(Icons.shop_rounded, size: 50, color: Colors.white,),
          
        ],
      ),
    );
  }
}