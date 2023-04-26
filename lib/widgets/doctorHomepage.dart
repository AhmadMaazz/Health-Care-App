import 'package:flutter/material.dart';
import 'package:searchbar_animation/searchbar_animation.dart';
import 'package:toggle_switch/toggle_switch.dart';

class DoctorHomePage extends StatefulWidget {
  const DoctorHomePage({super.key});

  @override
  State<DoctorHomePage> createState() => _DoctorHomePageState();
}

class _DoctorHomePageState extends State<DoctorHomePage> {
  bool available = true;

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
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: size.height * 0.02),
          const Text(
            'Doctor Mandes',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
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
          SizedBox(height: size.height * 0.01),
          Container(
            alignment: Alignment.center,
            height: 40,
            width: 365,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[300],
            ),
            child: ToggleSwitch(
              minHeight: 30,
              minWidth: 180.0,
              cornerRadius: 20.0,
              activeBgColors: const [
                [Colors.white],
                [Colors.white]
              ],
              activeFgColor: Colors.black,
              inactiveBgColor: Colors.grey[300],
              inactiveFgColor: Colors.black54,
              initialLabelIndex: available ? 0 : 1,

              // changeOnTap: true,
              // animate: true,
              totalSwitches: 2,
              labels: const ['Available', 'Unavailble'],
              radiusStyle: true,
              onToggle: (index) {
                toggleSwitch(index!);
              },
            ),
          ),
          SizedBox(height: size.height * 0.025),
          const Divider(
            color: Color(0xFF13548A),
            thickness: 2,
            indent: 20,
            endIndent: 20,
          ),
          SizedBox(height: size.height * 0.025),
          PatientContainerWithName(size: size),
          PatientContainerWithName(size: size),
          PatientContainerWithName(size: size),
          PatientContainerWithName(size: size),
          PatientContainerWithName(size: size),
          PatientContainerWithName(size: size),
          PatientContainerWithName(size: size),
          PatientContainerWithName(size: size),
        ],
      ),
    );
  }
}

class PatientContainerWithName extends StatelessWidget {
  const PatientContainerWithName({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: size.width * 0.9,
          height: size.height * 0.07,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: const Color(0xFF13548A),
              width: 2,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Patient Name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Diagnose',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color(0xFF13548A),
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
