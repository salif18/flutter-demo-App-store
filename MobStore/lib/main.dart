import 'package:app/bottomNavigationBar.dart';
import 'package:app/drawer.dart';
import 'package:app/screens/connection/formulaire.dart';
import 'package:app/screens/home/home.dart';
import 'package:app/screens/profil/profil.dart';
import 'package:app/screens/search/search.dart';
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

  void _selectedPages(index) {
    setState(() => _currentIndex = index);
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
          MyProfil(),
        ][_currentIndex],
        drawer: const MyDrawer(),
        bottomNavigationBar: MyBottomNavigationBar(selectedPages: _selectedPages, currentIndex:_currentIndex),
      ),
    );
  }
}
