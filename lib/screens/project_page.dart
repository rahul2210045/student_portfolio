import 'package:flutter/material.dart';
import 'package:student_portfolio/components/card_component.dart';
import 'package:student_portfolio/constants/constants.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController _searchController = TextEditingController();
  List<Map<String, String>> allCourses = [
    {
      "courseName": "BAHASA SUNDA",
      "instructor": "Oleh Al-Baiqi Samaan",
      "students": "34",
      "description": "Kemampuan Merangkum Tulisan",
      "icon": "army",
    },
    {
      "courseName": "RAHASA SUNDA",
      "instructor": "Oleh Al-Baiqi Samaan",
      "students": "34",
      "description": "temampuan Rerangkum Tulisan",
      "icon": "army",
    },
    {
      "courseName": "TAHASA HUNDA",
      "instructor": "Oleh Al-Baiqi Samaan",
      "students": "34",
      "description": "Zemampuan Jerangkum Tulisan",
      "icon": "army",
    },
    {
      "courseName": "MAHASA GUNDA",
      "instructor": "Bleh Al-Baiqi Samaan",
      "students": "34",
      "description": "Femampuan Gerangkum Tulisan",
      "icon": "army",
    },
    // {
    //   "courseName": "RAHASA SUNDA",
    //   "instructor": "Oleh Al-Baiqi Samaan",
    //   "students": "34",
    //   "description": "Kemampuan Merangkum Tulisan",
    //   "icon": "army",
    // },
    // Add more course items here
  ];

  List<Map<String, String>> filteredCourses = [];

  @override
  void initState() {
    super.initState();
    filteredCourses = allCourses;
    _searchController.addListener(_filterCourses);
  }

  void _filterCourses() {
    String query = _searchController.text.toLowerCase();
    setState(() {
      // Filter the course list based on the search query
      filteredCourses = allCourses.where((course) {
        return course['courseName']!.toLowerCase().contains(query);
      }).toList();
    });
  }

  @override
  void dispose() {
    _searchController.dispose(); 
    super.dispose();
  }

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
                      controller: _searchController,
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
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 9),
                  for (var course in filteredCourses)
                    customCoursesCard(
                      Colors.black,
                      Colors.black,
                      Colors.black,
                      Colors.black,
                      course['icon']!,
                      course['courseName']!,
                      course['instructor']!,
                      course['students']!,
                      course['description']!,
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
