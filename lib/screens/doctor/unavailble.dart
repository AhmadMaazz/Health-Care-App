import 'package:flutter/material.dart';
import 'package:homedix/screens/doctor/authscreenP.dart';
import 'package:homedix/screens/doctor/doctorscreen.dart';
import 'package:homedix/widgets/custombutton.dart';


class Unavailable extends StatefulWidget {
  const Unavailable({super.key});

  @override
  State<Unavailable> createState() => _UnavailableState();
}

class _UnavailableState extends State<Unavailable> {
  DateTime? _selectedDate;
  final TextEditingController _aController = TextEditingController();

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
        backgroundColor: const Color(0xFF018C97),
        elevation: 0,
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
      body: Column(
        children: [
          SizedBox(height: size.height * 0.02),
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
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              controller: _aController,
              maxLines: null,
              decoration: const InputDecoration(
                hintText: 'Reason of Absense',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter email';
                }
                return null;
              },
            ),
          ),
          CustomButton(
              size: size, screen: const DoctorScreen(), text: 'Confirm Absense')
        ],
      ),
    );
  }
}
