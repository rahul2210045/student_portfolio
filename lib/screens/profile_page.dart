import 'package:flutter/material.dart';
import 'package:student_portfolio/components/navbar.dart';
import 'package:student_portfolio/constants/constants.dart';

class profilePage extends StatefulWidget {
  const profilePage({super.key});

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
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
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavBar(initialIndex: 3),
    );
  }
}
