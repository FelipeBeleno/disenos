import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.pink,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.calendar_month_outlined,
            size: 35,
          ),
          label: 'Calendario',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.pie_chart_outline_outlined,
            size: 35,
          ),
          label: 'Grafica',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.supervised_user_circle_outlined,
            size: 35,
          ),
          label: 'Usuarios',
        ),
      ],
    );
  }
}
