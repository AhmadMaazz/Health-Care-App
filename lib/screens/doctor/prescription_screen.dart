import 'package:flutter/material.dart';
import 'package:homedix/screens/doctor/authscreenP.dart';
import 'package:homedix/screens/doctor/prescription_detail.dart';


class PrescriptionScreen extends StatefulWidget {
  const PrescriptionScreen({Key? key}) : super(key: key);

  @override
  State<PrescriptionScreen> createState() => _PrescriptionScreenState();
}

class _PrescriptionScreenState extends State<PrescriptionScreen> {
  // final TextEditingController _nameController = TextEditingController();
  // final TextEditingController _ageController = TextEditingController();
  final TextEditingController _illnessController = TextEditingController();
  final TextEditingController _diagnosisController = TextEditingController();

  void _goToNextScreen() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => PrescriptionDetailsScreen(
        // name: _nameController.text,
        // age: _ageController.text,
        illness: _illnessController.text,
        diagnosis: _diagnosisController.text,
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Report'),
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
              SizedBox(height: size.height * 0.02),
              const Text(
                'Make a Report',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const Divider(
                color: Color(0xFF13548A),
                thickness: 2,
                // indent: 20,
                endIndent: 20,
              ),
              const SizedBox(height: 16),
              // TextField(
              //   controller: _nameController,
              //   decoration: const InputDecoration(
              //       labelText: 'Name',
              //       labelStyle: TextStyle(fontWeight: FontWeight.bold)),
              // ),
              // const SizedBox(height: 16),
              // TextField(
              //   controller: _ageController,
              //   decoration: const InputDecoration(
              //       labelText: 'Age',
              //       labelStyle: TextStyle(fontWeight: FontWeight.bold)),
              // ),
              const SizedBox(height: 16),
              TextField(
                controller: _illnessController,
                decoration: const InputDecoration(
                    labelText: 'Illness',
                    labelStyle: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 16),
              // TextField(
              //   controller: _diagnosisController,
              //   decoration: const InputDecoration(
              //       labelText: 'Report',
              //       labelStyle: TextStyle(fontWeight: FontWeight.bold)),
              // ),
              TextField(
                controller: _diagnosisController,
                maxLines: null,
                decoration: const InputDecoration(
                  labelText: 'Report',
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),

              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: _goToNextScreen,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF018C97)),
                  child: const Text(
                    'Next',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
