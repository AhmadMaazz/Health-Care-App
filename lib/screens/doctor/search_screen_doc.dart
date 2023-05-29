import 'package:flutter/material.dart';
import 'package:homedix/screens/doctor/authscreenP.dart';
import 'package:searchbar_animation/searchbar_animation.dart';


class SearchScreenDoc extends StatelessWidget {
  const SearchScreenDoc({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF018C97),
        elevation: 0,
        title: const Text('Choose a Patient'),
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
        ],
      ),
    );
  }
}
