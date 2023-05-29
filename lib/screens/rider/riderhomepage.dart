import 'package:flutter/material.dart';
import 'package:homedix/screens/admin/emp_button.dart';
import 'package:homedix/screens/doctor/unavailble.dart';
import 'package:homedix/screens/rider/mapscreen.dart';
import 'package:homedix/screens/rider/unavailblerider.dart';

class RiderHomePage extends StatefulWidget {
  const RiderHomePage({super.key});

  @override
  State<RiderHomePage> createState() => _RiderHomePageState();
}

class _RiderHomePageState extends State<RiderHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: size.height * 0.02),
        const Text(
          '(RiderName)',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: size.height * 0.02),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF018C97)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const UnavailableRider()),
            );
          },
          child: const Text('Set Absence date'),
        ),
        SizedBox(height: size.height * 0.025),
        const Divider(
          color: Color(0xFF13548A),
          thickness: 2,
          indent: 20,
          endIndent: 20,
        ),
        SizedBox(height: size.height * 0.025),
        EmpButton(
          size: size,
          availability: '1',
          name: 'TaskNumber:',
          id: 'Rider',
          address: 'Address',
          screen: const MapScreen(),
        ),
        EmpButton(
          size: size,
          availability: '2',
          name: 'TaskNumber:',
          id: 'Rider',
          address: 'Address',
          screen: const MapScreen(),
        ),
      ],
    );
  }
}
