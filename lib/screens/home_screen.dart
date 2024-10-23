import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:student_portfolio/components/card_component.dart';
import 'package:student_portfolio/components/navbar.dart';
import 'package:student_portfolio/constants/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customCoursesCard(
                  Colors.black,
                  Colors.black,
                  Colors.black,
                  Colors.black,
                  "army",
                  "BAHASA SUNDA",
                  "Oleh Al-Baiqi Samaan",
                  "34",
                  "Kemampuan Merangkum Tulisan",
                  context),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavBar(initialIndex: 0),
    );
  }
}
