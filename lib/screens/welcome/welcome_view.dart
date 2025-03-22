// ignore_for_file: sort_child_properties_last

import 'package:baakas/screens/signup/signup_view.dart';
import 'package:baakas/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          decoration: BoxDecoration(
            image:DecorationImage(
              image: AssetImage('assets/images/backgroundImage.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              Spacer(),
              Image(
                image: AssetImage('assets/images/logo.png'),
                width: Get.width * 0.65,
              ),
              Spacer(),
              loginBtn(),
              SizedBox(height: 12),
              signupBtn(),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
  Widget loginBtn(){
    return CustomElevatedButton( 
      child: Text(
        'Login', 
      style: TextStyle(
        fontWeight: FontWeight.w500,
        color: Colors.black
        ),
     ),
     onPressed: () {},
     foregroundColor: Colors.grey,
     backgroundColor: const Color.fromARGB(255, 19, 148, 94),
   );
  }

 Widget signupBtn(){
    return CustomElevatedButton(
      child: Text(
        'Sign up', 
       style: TextStyle(
        fontWeight: FontWeight.w500,
        color: Colors.black
        ),
     ),
     foregroundColor: Colors.grey,
     backgroundColor: Colors.white,
     onPressed: () {
      Get.to(()=>SignupView());
     },
   );
  }

}