import 'package:flutter/material.dart';
import 'package:student_portfolio/components/card_component.dart';
import 'package:student_portfolio/constants/constants.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'lib/assets/search_icon.png',
                            width: 20,
                            height: 20,
                          ),
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        labelText: "Search a project",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey[400] ?? Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  SizedBox(height: 9),
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
                    context,
                  ),
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
                    context,
                  ),
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
                    context,
                  ),
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
                    context,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: (screenWidth / 2) - 75,
            child: Container(
              height: 75, 
              child: ClipOval(
                child: Image.asset(
                  'lib/assets/filtter.png',
                  scale: 2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
