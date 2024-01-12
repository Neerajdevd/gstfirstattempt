import 'package:pahadinatural/models/buyer.dart';
import 'package:pahadinatural/models/supplier.dart';

class Invoice {
  final Invoiceinfo info;
  
  final Supplier supplier;
  final Buyer buyer;
  final List<InvoiceItem> items;

  Invoice(
      {required this.buyer,
      required this.info,
      required this.supplier,
      required this.items,
     });
}

class Invoiceinfo {
  final String taxinvoice;
  final DateTime date;
  final String orderno;
  final String gstno;
  final String fssai;

  Invoiceinfo(
      {required this.date,
      required this.gstno,
      required this.orderno,
      required this.taxinvoice,
      required this.fssai});
}

class InvoiceItem {
  final String descriptionofgoods;
  final double hsncode;
  final int quantityofpacket;
  final int quantity;
  final double baseprice;
  final String csgstinper;
  final double csgst;
  final double sgst;
  final String sgstinper;
  final String igstper;
  final double igst;

  InvoiceItem(
      {required this.descriptionofgoods,
      required this.hsncode,
      required this.quantityofpacket,
      required this.quantity,
      required this.baseprice,
      required this.csgstinper,
      required this.csgst,required this.sgst,required this.sgstinper,required this.igstper,required this.igst, });
}
