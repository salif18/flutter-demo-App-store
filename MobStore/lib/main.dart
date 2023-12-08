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
  int _selectedIndex = 0;

  void _selectedPages(int index) {
    setState(()=>_currentIndex = index);
  }

  void _onItemTaped(index){
    setState(() {
      _selectedIndex =index;
    });
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
        drawer: Drawer(
          child:ListView(
            children:  [
              DrawerHeader(
                child: ClipRRect(
                  child: Image(
                    image:AssetImage('assets/images/logo1.jfif')
                  )
                ),
                decoration: BoxDecoration(
                  color:Colors.purpleAccent,
                ),
                ),
                 ListTile(
                  title: const Text('Profil'),
                  selected: _selectedIndex == 0,
                  onTap: null,
                  
                 ),
                 ListTile(
                  title: const Text('Settings'),
                  selected: _selectedIndex == 4,
                  onTap: (){
                    _onItemTaped(1);
                    Navigator.pop(context);
                  },
                  
                 ),
                 ListTile(
                  title: const Text('Profil'),
                  selected: _selectedIndex == 0,
                  onTap: null,
                  
                 ),
                 ListTile(
                  title: const Text('Profil'),
                  selected: _selectedIndex == 0,
                  onTap: null,
                 ),
                 ListTile(
                  title: const Text('Profil'),
                  selected: _selectedIndex == 0,
                  onTap: null,
                  
                 ),
                 ListTile(
                  title: const Text('Profil'),
                  selected: _selectedIndex == 0,
                  onTap: null,
                  
                 ),
                 ListTile(
                  title: const Text('Profil'),
                  selected: _selectedIndex == 0,
                  onTap: null,
                  
                 )
              ],
            )
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (index) => _selectedPages(index),
          selectedItemColor: const Color.fromARGB(255, 157, 1, 255),
          unselectedItemColor: Colors.grey,
        
          items:const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 35,),
              label: "Home"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, size: 35,),
              label: "Search App"
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.stroller,size: 35,),
              label:"Store"
            ), 
            BottomNavigationBarItem(
              icon: Icon(Icons.login, size: 35,),
              label:"Connexion"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings, size: 35,),
              label:"Settings"
            ),
            
           
          ],
        ),
      ),
    );
  }
}
