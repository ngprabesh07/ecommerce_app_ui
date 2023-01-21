import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'views/home_page.dart';


void main() async {
  
  runApp(kIsWeb == true
      ? DevicePreview(
          enabled: !kReleaseMode,
          builder: (context)=>const MyApp(),
        )
      : const MyApp(),
        );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      title: "Ecommerce",
      home: const HomePage(),
    );
  }
}