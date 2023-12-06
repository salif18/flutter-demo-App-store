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
      child:const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
       
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Mob store",
              style: TextStyle(
                fontSize:25, 
                fontWeight: FontWeight.bold, 
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