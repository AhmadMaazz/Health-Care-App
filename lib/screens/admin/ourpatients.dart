import 'package:flutter/material.dart';
import 'package:homedix/screens/admin/deletepatient.dart';
import 'package:homedix/screens/admin/patient_button.dart';
import 'package:searchbar_animation/searchbar_animation.dart';

import 'authscreenA.dart';

class OurPatients extends StatelessWidget {
  const OurPatients({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF018C97),
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/myicon.png'),
            radius: 20,
          ),
        ),
        title: const Text(
          'Hello Administrator',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const AuthScreenA()),
              );
            },
            icon: const Icon(Icons.logout),
          ),
        ],
        // title: const Text('Admin Page'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: size.height * 0.02),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: SearchBarAnimation(
                textEditingController: TextEditingController(),
                isOriginalAnimation: false,
                trailingWidget: const Icon(Icons.search),
                secondaryButtonWidget: const Icon(Icons.cancel_outlined),
                buttonWidget: const Icon(Icons.search),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            PatientButton(
              size: size,
              delete: 'Delete',
              name: 'PatientName',
              id: 'Patient',
              address: 'Address',
              screen: const DeletePatient(),
            ),
            PatientButton(
              size: size,
              delete: 'Delete',
              name: 'PatientName',
              id: 'Patient',
              address: 'Address',
              screen: const DeletePatient(),
            )
          ],
        ),
      ),
    );
  }
}
