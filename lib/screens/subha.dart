import 'package:flutter/material.dart';

class SubhaScreen extends StatefulWidget {
  const SubhaScreen({super.key});

  @override
  State<SubhaScreen> createState() => _SubhaScreenState();
}

class _SubhaScreenState extends State<SubhaScreen> {
  int count = 0;

  void counter() {
    setState(() {
      count++;
    });
  }

  void reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    String appBarTitle;
    if (count >= 0 && count <= 33) {
      appBarTitle = 'سبحان الله';
    } else if (count >= 34 && count <= 66) {
      appBarTitle = 'الحمد لله';
    } else if (count >= 67 && count <= 99) {
      appBarTitle = 'الله أكبر';
    } else {
      appBarTitle = 'ألا بذكر اللَّه تطمئِن القلوب';
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          appBarTitle,
          style: const TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            fontFamily: 'TheYear',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    'assets/OIP.jpeg'), // اسم الصورة التي تريد استخدامها كخلفية
                fit: BoxFit.cover,
                opacity: 0.5
                // لتغطية كامل المساحة
                ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 1.50,
                      height: MediaQuery.of(context).size.height / 1.50,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 0, 103, 84),
                              Color.fromARGB(255, 135, 209, 164),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(1, 9),
                              blurRadius: 20,
                              color: Colors.white),
                        ],
                      ),
                      child: Center(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 30),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          child: Text(
                            count.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Transform.translate(
                      offset:
                          const Offset(0, -85), // ارفع الـ Container بمقدار 20
                      child: Container(
                        width: 190,
                        height: 190,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 0, 103, 84),
                                Color.fromARGB(255, 135, 209, 164),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(50),
                            bottomLeft: Radius.circular(50),
                          ),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(1, 9),
                                blurRadius: 20,
                                color: Colors.white),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () => counter(),
                              style: ElevatedButton.styleFrom(
                                  maximumSize: const Size(80, 80)),
                              child: Container(
                                decoration: const BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.circle),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  onPressed: () => reset(),
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.red,
                                  ),
                                  child: const Icon(Icons.wifi_protected_setup),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
