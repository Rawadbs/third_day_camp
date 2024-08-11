import 'package:flutter/material.dart';
import 'package:third_day_camp/screens/after_prayer_athkar.dart';
import 'package:third_day_camp/screens/evening_athkar.dart';
import 'package:third_day_camp/screens/morning_athkar.dart';
import 'package:third_day_camp/screens/sleep_athkar.dart';
import 'package:third_day_camp/screens/subha.dart';
import 'package:third_day_camp/widgets/big_container_widget.dart';
import 'package:third_day_camp/widgets/small_container_widget.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> texts = [
      'اذكار الصباح',
      'اذكار المساء',
      'اذكار النوم',
      'اذكار بعد الصلاة'
    ];
    List<List<Color>> colors = [
      [
        const Color.fromARGB(253, 255, 242, 175),
        const Color(0xffF5FAF4),
      ],
      [
        const Color.fromARGB(255, 145, 228, 236),
        const Color(0xffFEF6F4),
      ],
      [
        const Color.fromARGB(255, 151, 236, 169),
        const Color(0xffFFFAF0),
      ],
      [
        const Color.fromARGB(255, 255, 211, 206),
        const Color(0xffFEF6F4),
      ],
    ];

    // Define navigation for each index
    List<Widget> pages = [
      const MorningAthkar(),
      const EveningAthkar(),
      const SleepAthkarPage(),
      const AfterPrayerAthkar(),
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'ذكرنا',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontFamily: 'TheYear',
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  'assets/background.png'), // اسم الصورة التي تريد استخدامها كخلفية
              fit: BoxFit.cover,
              opacity: 0.3
              // لتغطية كامل المساحة
              ),
        ),
        child: Column(
          children: [
            ContainerAthkar(
              athkar: 'السبحة',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SubhaScreen(),
                  ),
                );
              },
            ),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(15),
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // عدد الأعمدة في الشبكة
                  crossAxisSpacing: 20, // تقليل المسافة بين الأعمدة
                  mainAxisSpacing: 40, // تقليل المسافة بين الصفوف
                  childAspectRatio: 0.99,
                ),
                itemBuilder: (context, index) {
                  return SmallContainer(
                    text: texts[index],
                    color1: colors[index][0],
                    color2: colors[index][1],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => pages[
                              index], // Navigate to the corresponding page
                        ),
                      );
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
