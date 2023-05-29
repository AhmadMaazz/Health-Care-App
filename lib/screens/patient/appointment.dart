import 'package:flutter/material.dart';
import 'package:homedix/screens/patient/careneeded.dart';
import 'package:homedix/screens/patient/someone_elseinfo.dart';

class BookAppointmentPage extends StatelessWidget {
  const BookAppointmentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF018C97),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: size.height * 0.02),
            const Text(
              'Book an Appointment',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.02),
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/myicon.png'),
            ),
            // const SizedBox(height: 20),
            SizedBox(height: size.height * 0.02),
            SizedBox(
              width: size.width * 0.5,
              height: size.height * 0.06,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF018C97),
                  elevation: 10,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CareNeeded()),
                  );
                },
                child: const Text('For Yourself'),
              ),
            ),
            SizedBox(height: size.height * 0.1),
            // const SizedBox(height: 20),
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/peeps.png'),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: size.width * 0.5,
              height: size.height * 0.06,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF018C97),
                  elevation: 10,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SomeoneElseInfoScr()),
                  );
                },
                child: const Text('For Someone Else'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
