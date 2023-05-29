import 'package:flutter/material.dart';
import 'package:homedix/screens/patient/patientscreen.dart';

class SigninFormP extends StatelessWidget {
  const SigninFormP({
    Key? key,
    required GlobalKey<FormState> signInFormKey,
    required TextEditingController emailController,
    required TextEditingController passwordController,
  })  : _signInFormKey = signInFormKey,
        _emailController = emailController,
        _passwordController = passwordController,
        super(key: key);

  final GlobalKey<FormState> _signInFormKey;
  final TextEditingController _emailController;
  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Form(
        key: _signInFormKey,
        child: Column(
          children: [
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
                      'Sign In',
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
          ],
        ),
      ),
    );
  }
}
