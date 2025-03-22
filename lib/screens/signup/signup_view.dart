import 'package:baakas/helper/theme_helper.dart';
import 'package:baakas/screens/signup/signup_viewmodel.dart';
import 'package:baakas/widgets/custom_buttons.dart';
import 'package:baakas/widgets/custom_textfields.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupView extends StatelessWidget {
  SignupView({super.key});

  final SignupViewmodel viewModel = Get.put(SignupViewmodel());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
                topContainer(),
                Container(
                  color: ThemeHelper.grey1,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(16, 30, 16, 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25),
                      ),
                    ),
                    child: Column(
                      children: [
                          emailTextField(),
                          SizedBox(height: 15),
                          passwordTextField(),
                          createAccountBtn()
                      ],
                    ),
                  ),
                )
            ],
          ),
        )
      )
    );
  }
  Widget topContainer(){
    return Container(
      width: double.infinity,
      height: Get.height * 0.22,
      padding:EdgeInsets.only(left: 16,bottom: 15,top: 20),
      color:ThemeHelper.grey1,
      child: Column( 
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: (){
                Get.back();
              },
              child: Icon(Icons.arrow_back_ios_new_rounded),
            ),
            Spacer(),
            Text(
              'Sign Up',
            style: TextStyle(fontWeight: FontWeight.w700,fontSize: 32),
          ),
            Text(
              'Enter your details below & free signup',
            style: TextStyle(
              fontSize: 12.5,
              color: ThemeHelper.grey2
              ),
          )
        ],
      ),
    );
  }
  Widget emailTextField(){
    return CustomTextField1(
      title: 'Your Email',
    );
  }
    Widget passwordTextField(){
    return Obx(()=>CustomTextField1(
      title: 'Password',
      obscureText: viewModel.obscureText.value,
      suffixIcon: IconButton(
        icon: Icon(
          viewModel.obscureText.value 
          ? CupertinoIcons.eye_slash
          : CupertinoIcons.eye,
          size: 20,   
        ),
        color: ThemeHelper.navyBlue,
        onPressed: (){
          viewModel.obscureText.value = !viewModel.obscureText.value;
          },
        ),
      ),
    );
  }

  Widget createAccountBtn(){
    return Padding(
      padding: EdgeInsets.only(top:30, bottom: 15),
      child: CustomElevatedButton(
        child: Text('Create Account'),
        onPressed: (){},
      ),
    );
  }
}