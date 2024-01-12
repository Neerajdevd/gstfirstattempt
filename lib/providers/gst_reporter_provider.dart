
import 'package:flutter/material.dart';
import 'package:pahadinatural/models/gstreport_model.dart';

class GSTReportProvider extends ChangeNotifier {
  List<GSTReport> _reports = [];

  List<GSTReport> get reports => _reports;

  void fetchReportsForMonth(DateTime month) {
    
    _reports = GSTDataSource.getReportsForMonth(month);
    notifyListeners();
  }
}
class GSTDataSource {
  static List<GSTReport> getReportsForMonth(DateTime month) {
    return [
      GSTReport(
        date: DateTime(2024, 1, 1),
        sales: 5000.0,
        purchases: 3000.0,
        inputTaxCredit: 1000.0,
        outputTaxLiability: 200.0,
      ),
      // Add more reports as needed
    ];
  }
}
