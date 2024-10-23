import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:student_portfolio/screens/home_screen.dart';
import 'package:student_portfolio/screens/portfolio.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white, 
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Roboto',
        textTheme: TextTheme(
          bodyText1: TextStyle(fontFamily: 'Roboto'),
          bodyText2: TextStyle(fontFamily: 'Roboto'),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const portfolioPage(),
    );
  }
}
