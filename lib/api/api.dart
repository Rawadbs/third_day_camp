import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:http/http.dart' as http;
import 'package:third_day_camp/models/athkar.dart';
import 'package:third_day_camp/models/sleepatkar_model.dart';

// خدمة الأذكار الصباحية
class MorningAthkarService {
  final String apiUrl =
      'https://ahegazy.github.io/muslimKit/json/azkar_sabah.json'; // URL الخاص بالأذكار

  Future<Athkar> fetchMorningAthkar() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      return Athkar.fromJson(json.decode(response.body));
    } else {
      throw Exception('فشل في تحميل الأذكار الصباحية');
    }
  }
}

// خدمة الأذكار المسائية
class EveningAthkarService {
  final String apiUrl =
      'https://ahegazy.github.io/muslimKit/json/azkar_massa.json'; // URL الخاص بالأذكار المسائية

  Future<Athkar> fetchEveningAthkar() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      return Athkar.fromJson(json.decode(response.body));
    } else {
      throw Exception('فشل في تحميل الأذكار المسائية');
    }
  }
}

class AfterPrayerAthkarService {
  final String apiUrl =
      'https://ahegazy.github.io/muslimKit/json/PostPrayer_azkar.json'; // URL الخاص بالأذكار المسائية

  Future<Athkar> fetchAfterPrayerAthkar() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      return Athkar.fromJson(json.decode(response.body));
    } else {
      throw Exception('فشل في تحميل الأذكار المسائية');
    }
  }
}

class SleepAthkarService {
  Future<SleepAthkar> fetchSleepAthkar() async {
    // تحميل الملف من الأصول
    final jsonString = await rootBundle.loadString('assets/sleep_athkar.json');

    // تحليل JSON
    final jsonResponse = json.decode(jsonString);

    return SleepAthkar.fromJson(jsonResponse);
  }
}
