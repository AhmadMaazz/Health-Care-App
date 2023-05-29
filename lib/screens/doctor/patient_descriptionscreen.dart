import 'package:flutter/material.dart';
import 'package:homedix/screens/doctor/authscreenP.dart';
import 'package:homedix/screens/doctor/prescription_screen.dart';
import 'package:homedix/widgets/custombutton.dart';


class PatientDescScreen extends StatelessWidget {
  const PatientDescScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F8),
      appBar: AppBar(
        title: const Text('Patient Description'),
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
      body: Center(
        child: Column(
          children: [
            SizedBox(height: size.height * 0.02),

            // SizedBox(height: size.height * 0.02),
            const Divider(
              color: Color(0xFF13548A),
              thickness: 2,
              indent: 20,
              endIndent: 20,
            ),
            // Container(
            //   width: size.width * 0.9,
            //   height: size.height * 0.25,
            //   decoration: const BoxDecoration(
            //     color: Colors.pink,
            //   ),
            // ),
            Container(
              width: size.width * 0.9,
              height: size.height * 0.25,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xFF13548A),
                  width: 3.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: const TextSpan(
                          // style: DefaultTextStyle.of(context).style,
                          children: [
                            TextSpan(
                              text: 'Name: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: 'Alison',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: const TextSpan(
                          // style: DefaultTextStyle.of(context).style,
                          children: [
                            TextSpan(
                              text: 'Age: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: '23',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: const TextSpan(
                          // style: DefaultTextStyle.of(context).style,
                          children: [
                            TextSpan(
                              text: 'Phonenumber: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: '123456',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      RichText(
                        text: const TextSpan(
                          // style: DefaultTextStyle.of(context).style,
                          children: [
                            TextSpan(
                              text: 'Full address: \n',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text:
                                  '123, XYZ Street\nABC Colony\nCity, State - 12345',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Container(
              width: size.width * 0.9,
              height: size.height * 0.35,
              decoration: BoxDecoration(
                color: const Color(0xFF018C97),
                border: Border.all(
                  color: Colors.black,
                  width: 3.0,
                ),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(height: 10),
                      Text(
                        'Patient Illness:',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          // color: Colors.white,
                        ),
                      ),
                      Divider(thickness: 2, color: Colors.white),
                      SizedBox(height: 10),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed imperdiet justo sed est lacinia tristique. In euismod volutpat sapien, eu gravida ante lacinia at. Duis consectetur enim in libero malesuada, vitae aliquet lorem vestibulum. Vivamus vel sapien quam. Nam lacinia venenatis mi at ultricies. Aliquam sit amet erat in dolor tristique malesuada a id felis. Donec condimentum, odio vitae malesuada elementum, purus mi hendrerit elit, eu varius nisl ex nec nibh. Duis auctor imperdiet arcu, eu hendrerit sapien tincidunt ac. Ut lobortis gravida sem, eu pellentesque dolor placerat ut. Etiam accumsan euismod lectus, sed bibendum risus facilisis ut. Nullam ut nibh vel metus aliquam ultrices. Fusce luctus ultricies justo, ut venenatis tellus rutrum non.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            CustomButton(
              size: size,
              screen: const PrescriptionScreen(),
              text: 'Diagnose Patient',
            )
          ],
        ),
      ),
    );
  }
}
