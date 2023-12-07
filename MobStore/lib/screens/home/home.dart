import 'package:app/screens/home/widgets/containeritems.dart';
import 'package:app/screens/home/widgets/header.dart';
import 'package:app/screens/home/widgets/searchbar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     backgroundColor: Color.fromARGB(255, 167, 54, 238),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(),
            const BarSearch(),
            MyContainerItems(),
          ],
        ),
        ),
    );
  }
}