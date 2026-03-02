import 'package:drive_track_frontend/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

final TextEditingController _emailController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.loginBgColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Center(
                child: SizedBox(
                  width: screenWidth - 100,
                  child: Lottie.asset('assets/animation/loginAnimation.json'),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                width: screenWidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        color: AppColors.fontColorBlack,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Welcome back to',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'My Task',
                          style: TextStyle(
                            color: AppColors.accentColor,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: AppColors.textFieldBorderColor,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: AppColors.textFieldBorderColor,
                          ),
                        ),
                        label: Text(
                          'Email',
                          style: TextStyle(
                            color: AppColors.labeltextBlack,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    TextField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: AppColors.textFieldBorderColor,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: AppColors.textFieldBorderColor,
                          ),
                        ),
                        label: Text(
                          'Password',
                          style: TextStyle(
                            color: AppColors.labeltextBlack,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: screenWidth,
                      height: 55,
                      decoration: BoxDecoration(
                        color: AppColors.accentColor,
                        borderRadius: BorderRadius.circular(80),
                      ),
                      child: Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          'dont have an account',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Sign Up',
                          style: TextStyle(
                            color: AppColors.accentColor,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
