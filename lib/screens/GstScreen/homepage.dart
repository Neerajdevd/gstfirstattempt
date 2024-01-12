import 'package:flutter/material.dart';
import 'package:pahadinatural/screens/GstScreen/gstscreeen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
         const Text("Hello"),
          TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const GstPdfScreen();
                }));
              },
              child:const Text("Gst Report"))
        ],
      ),
    );
  }
}
