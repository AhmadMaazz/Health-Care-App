import 'package:flutter/material.dart';
import 'package:homedix/screens/selectionpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 198, 238, 238),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset('assets/images/logowithdesc.png'),
            SizedBox(height: size.height * 0.16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: TextButton(
                child: Container(
                  width: size.width * 0.9,
                  height: size.height * 0.1,
                  // color: Colors.red,
                  decoration: BoxDecoration(
                    color: const Color(0xFF13548A),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Center(
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SelectionPage()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
