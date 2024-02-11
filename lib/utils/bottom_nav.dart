import 'package:flutter/material.dart';
import 'package:promilo_task/screens/description_screen/description_screen.dart';

import '../screens/home_screen/home_screen.dart';

List<BottomNavigationBarItem> bottomNavItems = const <BottomNavigationBarItem>[
  BottomNavigationBarItem(
    icon: Icon(
      Icons.maps_home_work_outlined,
    ),
    label: 'Home',
  ),
  BottomNavigationBarItem(
    icon: Icon(
      Icons.account_tree_rounded,
    ),
    label: 'Prolet',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.handshake_outlined),
    label: 'Meetup',
  ),
  BottomNavigationBarItem(
    icon: Icon(
      Icons.create_new_folder,
    ),
    label: 'Explore',
  ),
  BottomNavigationBarItem(
    icon: Icon(
      Icons.person_2,
    ),
    label: 'Account',
  ),
];

final bottomNavScreen = [
  const HomeScreen(),
  const Center(
    child: Text("Prolet screen"),
  ),
  const DescriptionScreen(),
  const Center(
    child: Text("Explore Screen"),
  ),
  const Center(
    child: Text("Account Screen"),
  ),
];
