import 'package:flutter/material.dart';
import 'package:hospital_app/screens/authscreen.dart';
import 'package:hospital_app/screens/doctor/doctorscreen.dart';
import 'package:hospital_app/screens/homepage.dart';

import '../widgets/custombutton.dart';

class SelectionPage extends StatelessWidget {
  const SelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFAFD7D7),
      appBar: AppBar(
        backgroundColor: const Color(0xFFAFD7D7),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              'assets/images/hosp.jpg',
              scale: 15,
            ),
            // SizedBox(height: size.height * 0.16),
            CustomButton(size: size, screen: const AuthScreen(), text: 'Admin'),
            CustomButton(
                size: size, screen: const DoctorScreen(), text: 'Doctor'),
            CustomButton(size: size, screen: const HomePage(), text: 'Patient'),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}