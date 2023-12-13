// ignore: file_names
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget MyBottomNavigationBar({selectedPages, currentIndex}) {
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    currentIndex: currentIndex,
    onTap: (index) => selectedPages(index),
    selectedItemColor: const Color.fromARGB(255, 157, 1, 255),
    unselectedItemColor: Colors.grey,
    items: const [
      BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            size: 35,
          ),
          label: "Home"),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            size: 35,
          ),
          label: "Search App"),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.stroller,
            size: 35,
          ),
          label: "Store"),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.login,
            size: 35,
          ),
          label: "Connexion"),
    ],
  );
}
