import 'package:flutter/material.dart';
import 'package:hospital_app/screens/patient/patientscreen.dart';

class SignupFormP extends StatelessWidget {
  const SignupFormP({
    Key? key,
    required GlobalKey<FormState> signUpFormKey,
    required TextEditingController nameController,
    required TextEditingController phoneNumberController,
    required TextEditingController emailController,
    required TextEditingController passwordController,
  })  : _signUpFormKey = signUpFormKey,
        _nameController = nameController,
        _phoneNumberController = phoneNumberController,
        _emailController = emailController,
        _passwordController = passwordController,
        super(key: key);

  final GlobalKey<FormState> _signUpFormKey;
  final TextEditingController _nameController;
  final TextEditingController _phoneNumberController;
  final TextEditingController _emailController;
  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Form(
        key: _signUpFormKey,
        child: Column(
          children: [
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(
                hintText: 'Name',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter name';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _phoneNumberController,
              decoration: const InputDecoration(
                hintText: 'Phone Number',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter phone number';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                hintText: 'Email',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter email';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _passwordController,
              decoration: const InputDecoration(
                hintText: 'Password',
              ),
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter password';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
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
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PatientScreen()),
                  );
                },
              ),
            ),
            // CustomButton(size: size, screen: const HomePage(), text: 'Sign Up')
            // ElevatedButton(
            //   onPressed: () {},
            //   child: const Text('Sign Up'),
            // ),
          ],
        ),
      ),
    );
  }
}
