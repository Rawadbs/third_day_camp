import 'package:flutter/material.dart';

class ContainerAthkar extends StatelessWidget {
  final String athkar;
  final VoidCallback? onTap;
  const ContainerAthkar({super.key, required this.athkar, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          height: 170,
          width: 345,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(23),
            gradient: const LinearGradient(colors: [
              Color.fromARGB(255, 0, 103, 84),
              Color.fromARGB(255, 135, 209, 164),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: Text(
            athkar,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'TheYear',
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
