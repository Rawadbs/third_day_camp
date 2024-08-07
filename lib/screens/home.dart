import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'ذكرنا',
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Container(
              alignment: Alignment.center,
              height: 170,
              width: 345,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23),
                  gradient: const LinearGradient(colors: [
                    Color.fromARGB(255, 0, 103, 84),
                    Color.fromARGB(255, 135, 209, 164),
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
              child: const Text(
                'اذكار الصباح',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
