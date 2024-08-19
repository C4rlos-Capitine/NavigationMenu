import 'package:e_commerce_demo/screens/DocumentsScreen.dart';
import 'package:e_commerce_demo/screens/HomeScreen.dart';
import 'package:e_commerce_demo/screens/ProfileScreen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int _selectedIndex = 0;

  static List<Widget> _screens = <Widget>[
    Homescreen(),
    Profilescreen(),
    Documentsscreen(),
    AddScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        height: 80,
        elevation: 0,
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onItemTapped,
        destinations: const [
          NavigationDestination(icon: Icon(Iconsax.home_1), label: "Home"),
          NavigationDestination(
              icon: Icon(Iconsax.profile_2user), label: "Perfil"),
          NavigationDestination(
              icon: Icon(Iconsax.document_1), label: "Documents"),
          NavigationDestination(icon: Icon(Iconsax.add), label: "Add"),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Home Screen"),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Profile Screen"),
    );
  }
}

class DocumentsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Documents Screen"),
    );
  }
}

class AddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Add Screen"),
    );
  }
}
