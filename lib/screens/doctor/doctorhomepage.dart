import 'package:flutter/material.dart';
import 'package:homedix/screens/doctor/patientsdoc.dart';
import 'package:homedix/screens/doctor/search_screen_doc.dart';
import 'package:homedix/screens/doctor/unavailble.dart';

class DoctorHomePage extends StatefulWidget {
  const DoctorHomePage({super.key});

  @override
  State<DoctorHomePage> createState() => _DoctorHomePageState();
}

class _DoctorHomePageState extends State<DoctorHomePage> {
  // DateTime? _selectedDate;
  bool available = true;

  // Future<void> _selectDate(BuildContext context) async {
  //   final DateTime? picked = await showDatePicker(
  //     context: context,
  //     initialDate: DateTime.now(),
  //     firstDate: DateTime(2023),
  //     lastDate: DateTime(2040),
  //   );
  //   if (picked != null && picked != _selectedDate) {
  //     setState(() {
  //       _selectedDate = picked;
  //     });
  //   }
  // }

  void toggleSwitch(int index) {
    if (index == 0) {
      setState(() {
        available = true;
      });
    } else if (index == 1) {
      setState(() {
        available = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: size.height * 0.02),
        const Text(
          '(Cardiologist)',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: size.height * 0.02),
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 15.0),
        //   child: SearchBarAnimation(
        //     textEditingController: TextEditingController(),
        //     isOriginalAnimation: false,
        //     trailingWidget: const Icon(Icons.search),
        //     secondaryButtonWidget: const Icon(Icons.cancel_outlined),
        //     buttonWidget: const Icon(Icons.search),
        //   ),
        // ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF018C97)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SearchScreenDoc()),
            );
          },
          child: const Text('Choose a Patient'),
        ),
        SizedBox(height: size.height * 0.01),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF018C97)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Unavailable()),
            );
          },
          child: const Text('Set Absence date'),
        ),
        // Row(
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.symmetric(horizontal: 18.0),
        //       child: Align(
        //         alignment: Alignment.centerLeft,
        //         child: Material(
        //           elevation: 4.0,
        //           borderRadius: BorderRadius.circular(60),
        //           child: Container(
        //             decoration: BoxDecoration(
        //               // color: Colors.blue[100],
        //               borderRadius: BorderRadius.circular(40),
        //             ),
        //             child: IconButton(
        //               onPressed: () => _selectDate(context),
        //               icon: const Icon(
        //                 Icons.calendar_today,
        //                 color: Color(0xFF13548A),
        //               ),
        //               tooltip: 'Select date',
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //     const Text(
        //       'Choose Date!',
        //       style: TextStyle(fontSize: 16),
        //     )
        //   ],
        // ),
        // SizedBox(height: size.height * 0.02),
        // Container(
        //   alignment: Alignment.center,
        //   height: 40,
        //   width: 365,
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(20),
        //     color: Colors.grey[300],
        //   ),
        //   child: ToggleSwitch(
        //     minHeight: 30,
        //     minWidth: 180.0,
        //     cornerRadius: 20.0,
        //     activeBgColors: const [
        //       [Colors.white],
        //       [Colors.white]
        //     ],
        //     activeFgColor: Colors.black,
        //     inactiveBgColor: Colors.grey[300],
        //     inactiveFgColor: Colors.black54,
        //     initialLabelIndex: available ? 0 : 1,

        //     // changeOnTap: true,
        //     // animate: true,
        //     totalSwitches: 2,
        //     labels: const ['Available', 'Unavailable'],
        //     radiusStyle: true,
        //     onToggle: (index) {
        //       toggleSwitch(index!);
        //     },
        //   ),
        // ),

        SizedBox(height: size.height * 0.025),
        const Divider(
          color: Color(0xFF13548A),
          thickness: 2,
          indent: 20,
          endIndent: 20,
        ),
        SizedBox(height: size.height * 0.025),
        SizedBox(
          width: size.width * 0.8,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF018C97)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PatientsFTDOC(),
                ),
              );
            },
            child: const Text('Patients for Today'),
          ),
        )

        // PatientContainerWithName(
        //   size: size,
        //   text: 'Diagnose',
        //   name: 'Alison Parker',
        //   screen: const PatientDescScreen(),
        // ),
        // PatientContainerWithName(
        //   size: size,
        //   text: 'Diagnose',
        //   name: 'John Alia',
        //   screen: const PatientDescScreen(),
        // ),
        // PatientContainerWithName(
        //   size: size,
        //   text: 'Diagnose',
        //   name: 'Michael Jackson',
        //   screen: const PatientDescScreen(),
        // ),
        // PatientContainerWithName(
        //   size: size,
        //   text: 'Diagnose',
        //   name: 'Clark Adam',
        //   screen: const PatientDescScreen(),
        // ),
        // PatientContainerWithName(
        //   size: size,
        //   text: 'Diagnose',
        //   name: 'Owen Combs',
        //   screen: const PatientDescScreen(),
        // ),
      ],
    );
  }
}
