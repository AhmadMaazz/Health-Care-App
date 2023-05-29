import 'package:flutter/material.dart';
import 'package:homedix/screens/doctor/authscreenP.dart';
import 'package:homedix/screens/doctor/patient_descriptionscreen.dart';

import '../../widgets/Patientcontainerdoctorscreen.dart';

class PatientsFTDOC extends StatelessWidget {
  const PatientsFTDOC({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF018C97),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const AuthScreenD()),
              );
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: size.height * 0.025),
              const Text(
                'Patients for Today',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.025),
              PatientContainerWithName(
                size: size,
                text: 'Diagnose',
                name: 'Alison Parker',
                screen: const PatientDescScreen(),
              ),
              PatientContainerWithName(
                size: size,
                text: 'Diagnose',
                name: 'John Alia',
                screen: const PatientDescScreen(),
              ),
              PatientContainerWithName(
                size: size,
                text: 'Diagnose',
                name: 'Michael Jackson',
                screen: const PatientDescScreen(),
              ),
              PatientContainerWithName(
                size: size,
                text: 'Diagnose',
                name: 'Clark Adam',
                screen: const PatientDescScreen(),
              ),
              PatientContainerWithName(
                size: size,
                text: 'Diagnose',
                name: 'Owen Combs',
                screen: const PatientDescScreen(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
