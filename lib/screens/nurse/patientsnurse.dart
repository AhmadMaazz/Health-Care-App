import 'package:flutter/material.dart';
import 'package:homedix/screens/doctor/patient_descriptionscreen.dart';
import 'package:homedix/screens/nurse/authscreenN.dart';
import 'package:homedix/screens/nurse/patient_desc_nurse.dart';

import '../../widgets/Patientcontainerdoctorscreen.dart';

class PatientsFTNurse extends StatelessWidget {
  const PatientsFTNurse({super.key});

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
                MaterialPageRoute(builder: (context) => const AuthScreenN()),
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
                text: 'View',
                name: 'Alison Parker',
                screen: const PatientDescScreenNurse(),
              ),
              PatientContainerWithName(
                size: size,
                text: 'View',
                name: 'John Alia',
                screen: const PatientDescScreenNurse(),
              ),
              PatientContainerWithName(
                size: size,
                text: 'View',
                name: 'Michael Jackson',
                screen: const PatientDescScreenNurse(),
              ),
              PatientContainerWithName(
                size: size,
                text: 'View',
                name: 'Clark Adam',
                screen: const PatientDescScreenNurse(),
              ),
              PatientContainerWithName(
                size: size,
                text: 'View',
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
