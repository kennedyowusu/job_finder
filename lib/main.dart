import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:job_finder/views/home/home.dart';

void main() {
  runApp(const JobFinder());
}

class JobFinder extends StatelessWidget {
  const JobFinder({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      key: const Key('JobFinder'),
      title: 'Job Finder',
      theme: ThemeData(
        primaryColor: Color(0xFF43B1B7),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color(0xFFEED408),
        ),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
