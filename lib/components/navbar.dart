import 'package:flutter/material.dart';
import 'package:student_portfolio/constants/constants.dart';
import 'package:student_portfolio/screens/home_screen.dart';
import 'package:student_portfolio/screens/input_page.dart';
import 'package:student_portfolio/screens/portfolio.dart';
import 'package:student_portfolio/screens/profile_page.dart';

class NavBar extends StatefulWidget {
  final int initialIndex;

  const NavBar({super.key, required this.initialIndex});

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
  }

  void _onNavItemTapped(int index) {
    if (_selectedIndex == index) return;

    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => homePage()),
        );
        break;
      case 1:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => portfolioPage()),
        );
        break;
      case 2:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => inputPage()),
        );
        break;
      case 3:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => profilePage()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NavBarItem(
            iconPath: 'lib/assets/home.png',
            label: 'Home',
            isSelected: _selectedIndex == 0,
            onTap: () => _onNavItemTapped(0),
          ),
          const SizedBox(width: 3),
          NavBarItem(
            iconPath: 'lib/assets/portfolio.png',
            label: 'Portfolio',
            isSelected: _selectedIndex == 1,
            onTap: () => _onNavItemTapped(1),
          ),
          const SizedBox(width: 3),
          NavBarItem(
            iconPath: 'lib/assets/input.png',
            label: 'Input',
            isSelected: _selectedIndex == 2,
            onTap: () => _onNavItemTapped(2),
          ),
          const SizedBox(width: 3),
          NavBarItem(
            iconPath: 'lib/assets/profile.png',
            label: 'Profile',
            isSelected: _selectedIndex == 3,
            onTap: () => _onNavItemTapped(3),
          ),
        ],
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  final String iconPath;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const NavBarItem({
    super.key,
    required this.iconPath,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Image.asset(
                  iconPath,
                  height: 30,
                  color: isSelected ? primaryColor : Colors.grey.shade500,
                ),
              ),
              if (isSelected)
                Positioned(
                  bottom: 32,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 2,
                    color: primaryColor,
                  ),
                ),
            ],
          ),
          const SizedBox(height: 5),
          Text(
            label,
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 15,
              color: isSelected ? primaryColor : Colors.grey.shade500,
            ),
          ),
        ],
      ),
    );
  }
}
