// gst_report_screen.dart
import 'package:flutter/material.dart';
import 'package:pahadinatural/providers/gst_reporter_provider.dart';
import 'package:provider/provider.dart';

class GSTReportScreen extends StatelessWidget {
  const GSTReportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final gstProvider = Provider.of<GSTReportProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title:
            Text('GST Report - ${DateTime.now().month}/${DateTime.now().year}'),
      ),
      body: ListView.builder(
        itemCount: gstProvider.reports.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(
                  'Date: ${gstProvider.reports[index].date.day}/${gstProvider.reports[index].date.month}/${gstProvider.reports[index].date.year}'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Sales: ${gstProvider.reports[index].sales}'),
                  Text('Purchases: ${gstProvider.reports[index].purchases}'),
                  Text(
                      'Input Tax Credit: ${gstProvider.reports[index].inputTaxCredit}'),
                  Text(
                      'Output Tax Liability: ${gstProvider.reports[index].outputTaxLiability}'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
