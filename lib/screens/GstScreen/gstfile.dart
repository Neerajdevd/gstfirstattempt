import 'package:flutter/material.dart';
// import 'package:flutter_pdfview/flutter_pdfview.dart';

class GstfileShowing extends StatelessWidget {
  final String gstimg;
  
  
  const GstfileShowing({super.key, required this.gstimg});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: 100,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: () {}, child: const Text("Pdf")),
                  ElevatedButton(onPressed: () {}, child: const Text("Excel"))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(child: Image.network(gstimg))
            ],
          ),
        ),
      ),
    );
  }
}
