import 'package:flutter/material.dart';
import 'package:pahadinatural/providers/gst_reporter_provider.dart';
import 'package:pahadinatural/screens/HomeScreen/firstScreen/gst_report_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
 const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('GST Report App'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final gstProvider = Provider.of<GSTReportProvider>(context, listen: false);
            gstProvider.fetchReportsForMonth(DateTime.now());
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => GSTReportScreen(),
              ),
            );
          },
          child:const Text('Generate GST Report'),
        ),
      ),
    );
  }
}
            



           

            
