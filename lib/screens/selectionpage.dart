import 'package:flutter/material.dart';
import 'package:homedix/screens/admin/authscreenA.dart';
import 'package:homedix/screens/doctor/authscreenP.dart';
import 'package:homedix/screens/nurse/authscreenN.dart';
import 'package:homedix/screens/patient/authscreenP.dart';
import 'package:homedix/screens/rider/authscreenR.dart';

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
        actions: [
          const Flexible(child: SizedBox()),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AuthScreenR()),
              );
            },
            icon: const Icon(
              Icons.pedal_bike,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AuthScreenA()),
              );
            },
            icon: const Icon(
              Icons.admin_panel_settings,
              size: 30,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              'assets/images/logowithdesc.png',
              // scale: 15,
            ),
            // SizedBox(height: size.height * 0.16),
            CustomButton(
                size: size, screen: const AuthScreenD(), text: 'Doctor'),
            CustomButton(
                size: size, screen: const AuthScreenN(), text: 'Nurse'),
            CustomButton(
                size: size, screen: const AuthScreenP(), text: 'Patient'),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
