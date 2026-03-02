import 'package:drive_track_frontend/constants/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'saturday, March 02 2026',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
            Spacer(),
            Image.asset('assets/images/notification.png'),
          ],
        ),
      ),
      body: Container(
        height: screenHight - AppBar().preferredSize.height,
        width: screenWidth,
        child: Column(
          children: [
            Container(
              width: screenWidth,
              height: 250,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome Philip',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Poppins',
                      color: AppColors.fontColorBlack,
                    ),
                  ),
                  Text(
                    'Have a Nice day',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      color: AppColors.fontColorBlack,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Today Progress',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      color: AppColors.fontColorBlack,
                    ),
                  ),
                  Container(
                    height: 76,
                    width: screenWidth,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(''))
                    ),
                  ),
                ],
              ),
            ),
            Container(width: screenWidth),
          ],
        ),
      ),
    );
  }
}
