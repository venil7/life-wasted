import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum UserAge {
  fifty,
  seventy,
  ninety,
}

class BottomNavigation extends StatelessWidget {
  final UserAge userAge;
  final void Function(UserAge) onTap;
  BottomNavigation({required this.userAge, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: ThemeData.dark().colorScheme.secondary,
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.child),
            label: ('50 years'),
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.userTie),
            label: ('70 years'),
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.personWalkingWithCane),
            label: ('90 years'),
          ),
        ],
        currentIndex: userAge.index,
        selectedItemColor: Colors.deepOrangeAccent,
        onTap: (idx) => onTap(UserAge.values.firstWhere((v) => v.index == idx)),
      ),
    );
  }
}
