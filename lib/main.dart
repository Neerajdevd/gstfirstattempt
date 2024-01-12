import 'package:flutter/material.dart';
import 'package:pahadinatural/providers/card_provider.dart';
import 'package:pahadinatural/providers/gst_reporter_provider.dart';
import 'package:pahadinatural/screens/HomeScreen/firstScreen/gst_screen.dart';


import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => GSTReportProvider(),),
    ChangeNotifierProvider(create: (context) => CardProvider()),
  ], child: const MyApp()));
}
  

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:const PdfPage(),
    );
  }
}
