import 'package:flutter/material.dart';
import 'package:homedix/screens/admin/authscreenA.dart';
import 'package:homedix/screens/admin/editemp_screen.dart';
import 'package:homedix/screens/admin/emp_button.dart';
import 'package:homedix/screens/admin/edit_doc.dart';
import 'package:searchbar_animation/searchbar_animation.dart';

import '../doctor/authscreenP.dart';

class AdminHomePage extends StatelessWidget {
  const AdminHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Doctor'),
              Tab(text: 'Nurse'),
              Tab(text: 'Rider'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            DoctorWidget(),
            NurseWidget(),
            RiderWidget(),
          ],
        ),
      ),
    );
  }
}

class DoctorWidget extends StatelessWidget {
  const DoctorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
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
        EmpButton(
          size: size,
          availability: 'Available',
          name: 'DoctorName',
          address: 'Address',
          id: 'Doctor',
          screen: const EditDoctorScreen(),
        ),
        EmpButton(
          size: size,
          availability: 'Unavailable',
          name: 'DoctorName',
          address: 'Address',
          id: 'Doctor',
          screen: const EditDoctorScreen(),
        ),
      ],
    );
  }
}

class NurseWidget extends StatelessWidget {
  const NurseWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
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
        EmpButton(
          size: size,
          availability: 'Available',
          name: 'NurseName',
          address: 'Address',
          id: 'Nurse',
          screen: const EditEmpScreen(),
        ),
        EmpButton(
          size: size,
          availability: 'Unavailable',
          name: 'NurseName',
          address: 'Address',
          id: 'Nurse',
          screen: const EditEmpScreen(),
        ),
      ],
    );
  }
}

class RiderWidget extends StatelessWidget {
  const RiderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
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
        EmpButton(
          size: size,
          availability: 'Available',
          name: 'RiderName',
          address: 'Address',
          id: 'Rider',
          screen: const EditEmpScreen(),
        ),
        EmpButton(
          size: size,
          availability: 'Unavailable',
          name: 'RiderName',
          address: 'Address',
          id: 'Rider',
          screen: const EditEmpScreen(),
        ),
      ],
    );
  }
}
