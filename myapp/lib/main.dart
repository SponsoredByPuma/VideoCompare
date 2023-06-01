import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/home/home_view.dart';
import 'package:myapp/widgets/AnimatedSplashScreen.dart';
import 'package:get/get.dart';

void main() async {
  runApp(await buildApp());
}

Future<Widget> buildApp() async {
  return const ProviderScope(
    child: MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Video Compare',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(178, 206, 222, 1),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromRGBO(178, 206, 222, 1),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor:
                const Color.fromARGB(255, 91, 31, 97), // 111, 104, 102, 1
          ),
        ),
      ),
      home: const AnimatedSplashScreen(),
      routes: {
        '/home': (context) => const HomeView(),
      },
    );
  }
}
