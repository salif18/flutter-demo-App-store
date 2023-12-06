import 'package:app/screens/connection/formulaire.dart';
import 'package:app/screens/home/home.dart';
import 'package:app/screens/search/search.dart';
import 'package:app/screens/settings/settings.dart';
import 'package:app/screens/stores/storescreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  void _selectedPages(int index) {
    setState(()=>_currentIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: const [
          Home(),
          SearchScreen(),
          StoreScreen(),
          MyForm(),
          MySettings(),
          
        ][_currentIndex], 
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (index) => _selectedPages(index),
          selectedItemColor: const Color.fromARGB(255, 209, 73, 233),
          unselectedItemColor: Colors.grey,
        
          items:const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search App"
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.stroller),
              label:"Store"
            ), 
            BottomNavigationBarItem(
              icon: Icon(Icons.login),
              label:"Connexion"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label:"Settings"
            ),
            
           
          ],
        ),
      ),
    );
  }
}
