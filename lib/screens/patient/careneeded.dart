import 'package:flutter/material.dart';
import 'package:hospital_app/screens/patient/patienthomepage.dart';
import 'package:hospital_app/screens/patient/patientscreen.dart';

class CareNeeded extends StatefulWidget {
  const CareNeeded({super.key});

  @override
  State<CareNeeded> createState() => _CareNeededState();
}

class _CareNeededState extends State<CareNeeded> {
  TextEditingController careController = TextEditingController();
  // TextEditingController _careController = TextEditingController();
  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2023),
      lastDate: DateTime(2040),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        // title: const Text(
        //   '',
        //   style: TextStyle(fontSize: 20),
        // ),
        backgroundColor: const Color(0xFF018C97),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextContainer(size: size, text: 'I am'),
            SizedBox(height: size.height * 0.04),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'I need a ',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF018C97),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.5,
                    height: size.height * 0.1,
                    child: TextField(
                      controller: careController,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        border: const UnderlineInputBorder(),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: const Color(0xFF018C97).withOpacity(0.5)),
                        ),
                        disabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: const Color(0xFF018C97).withOpacity(0.5)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: const Color(0xFF018C97).withOpacity(0.5)),
                        ),
                        contentPadding: const EdgeInsets.only(top: 20),
                      ),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF018C97),
                      ),
                      onChanged: (value) {
                        setState(() {});
                      },
                    ),
                    // child:
                  ),
                ],
              ),
            ),
            // SizedBox(height: size.height * 0.16),
            SizedBox(height: size.height * 0.01),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Material(
                      elevation: 4.0,
                      borderRadius: BorderRadius.circular(60),
                      child: Container(
                        decoration: BoxDecoration(
                          // color: Colors.blue[100],
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: IconButton(
                          onPressed: () => _selectDate(context),
                          icon: const Icon(
                            Icons.calendar_today,
                            color: Color(0xFF13548A),
                          ),
                          tooltip: 'Select date',
                        ),
                      ),
                    ),
                  ),
                ),
                const Text(
                  'Choose Date!',
                  style: TextStyle(fontSize: 25),
                )
              ],
            ),
            SizedBox(height: size.height * 0.1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: size.height * 0.06,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PatientScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF018C97),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            16), // Adjust the value as per your needs
                      ),
                    ),
                    child: const Text('Confirm Appointment'),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.06,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PatientScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF018C97),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          16,
                        ), // Adjust the value as per your needs
                      ),
                    ),
                    child: const Text('Cancel Appointment'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TextContainer extends StatelessWidget {
  const TextContainer({
    Key? key,
    required this.size,
    required this.text,
  }) : super(key: key);

  final Size size;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: size.height * 0.3,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
        color: Color(0xFF018C97),
      ),
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.07,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 45),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Book an appointment!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
