import 'package:flutter/material.dart';

import 'authscreenA.dart';

class Statistics extends StatelessWidget {
  const Statistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
      body: const Center(
        child: Text('Statistics'),
      ),
    );
  }
}
