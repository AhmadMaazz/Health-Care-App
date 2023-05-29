import 'package:flutter/material.dart';
import 'package:homedix/screens/doctor/authscreenP.dart';
import 'package:homedix/screens/doctor/doctorscreen.dart';
import 'package:homedix/widgets/custombutton.dart';


class PrescriptionDetailsScreen extends StatelessWidget {
  final String illness;
  final String diagnosis;

  const PrescriptionDetailsScreen({
    Key? key,
    required this.illness,
    required this.diagnosis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Report Details'),
        backgroundColor: const Color(0xFF018C97),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                textDirection: TextDirection.ltr,
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Patient Information\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    // SizedBox(height: size.height * 0.02),
                    const TextSpan(
                      text: '\nName: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    const TextSpan(
                      text: 'Parker\n',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    const TextSpan(
                      text: '\nAge: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    const TextSpan(
                      text: '25\n',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    const TextSpan(
                      text: '\nIllness: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: '$illness\n',
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    const TextSpan(
                      text: '\nDiagnosis: \n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: diagnosis,
                      style: const TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              // Expanded(child: SizedBox(height: size.height * 0.2)),
              CustomButton(
                  size: size,
                  screen: const DoctorScreen(),
                  text: 'Patient done')
            ],
          ),
        ),
      ),
    );
  }
}
