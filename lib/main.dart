import 'package:baakas/helper/theme_helper.dart';
import 'package:baakas/screens/welcome/welcome_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

// ignore: unused_import
import 'pages/home.dart';

void main() { 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Baakas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: ThemeHelper.palette1,
          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'Poppins',
          appBarTheme: AppBarTheme(
            centerTitle: true,
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 17,
              ),
              elevation: 0,
              backgroundColor: Colors.transparent,
              iconTheme: IconThemeData(
                color: Colors.black,
                ),
          ),
          ),
      home: WelcomeView()
    );
  }
}
