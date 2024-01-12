
class GSTReport {
  final DateTime date;
  final double sales;
  final double purchases;
  final double inputTaxCredit;
  final double outputTaxLiability;

  GSTReport({
    required this.date,
    required this.sales,
    required this.purchases,
    required this.inputTaxCredit,
    required this.outputTaxLiability,
  });
}
