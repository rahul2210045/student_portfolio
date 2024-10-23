import 'package:flutter/material.dart';
import 'package:student_portfolio/components/card_component.dart';
import 'package:student_portfolio/components/navbar.dart';
import 'package:student_portfolio/constants/constants.dart';
import 'package:student_portfolio/screens/project_page.dart';

class portfolioPage extends StatefulWidget {
  const portfolioPage({super.key});

  @override
  State<portfolioPage> createState() => _portfolioPageState();
}

class _portfolioPageState extends State<portfolioPage> {
  int _selectedTabIndex = 0;

  final List<Widget> _pages = [
    ProfilePage(),
    Page2(),
    Page3(),
    Page4(),
  ];

  void _onTabSelected(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Portfolio',style: TextStyle(fontFamily: 'Roboto'),),
          actions: [
            IconButton(
              icon: Icon(
                Icons.shopping_bag_rounded,
                color: primaryColor,
                size: 28,
              ),
              onPressed: () {
                // Action for search icon
              },
            ),
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: primaryColor,
                size: 28,
              ),
              onPressed: () {
                // Action for notifications icon
              },
            ),
            SizedBox(width: 10),
          ],
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildTabItem('Project', 0),
                  buildTabItem('Saved', 1),
                  buildTabItem('Shared', 2),
                  buildTabItem('Achivement', 3),
                ],
              ),
            ),
            Container(
              height: 2,
              width: double.infinity,
              child: Row(
                children: [
                  buildLineSection(0),
                  buildLineSection(1),
                  buildLineSection(2),
                  buildLineSection(3),
                ],
              ),
            ),
            Expanded(
              child: _pages[_selectedTabIndex],
            ),
            
            
          ],
        ),
        bottomNavigationBar: const NavBar(initialIndex: 1),
      ),
    );
  }

  // Function to build the text tabs
  Widget buildTabItem(String text, int index) {
    return GestureDetector(
      onTap: () => _onTabSelected(index),
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 16,
              color:
                  _selectedTabIndex == index ? primaryColor : Colors.grey[800],
              fontWeight: _selectedTabIndex == index
                  ? FontWeight.bold
                  : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }

  // Function to build the colored lines under the tabs
  Widget buildLineSection(int index) {
    return Expanded(
      child: Container(
        color: _selectedTabIndex == index ? primaryColor : Colors.grey.shade300,
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Saved Page ', style: TextStyle(fontSize: 30,fontFamily:  'Roboto')));
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Shared Page ', style: TextStyle(fontSize: 30, fontFamily: 'Roboto')));
  }
}

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text('Achivement Page ', style: TextStyle(fontSize: 30, fontFamily: 'Roboto')));
  }
}
