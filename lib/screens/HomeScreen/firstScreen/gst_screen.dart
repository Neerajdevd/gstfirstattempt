import 'package:flutter/material.dart';
import 'package:pahadinatural/api/pdf_api.dart';
import 'package:pahadinatural/api/pdf_invoice_api.dart';
import 'package:pahadinatural/models/buyer.dart';
import 'package:pahadinatural/models/invoice.dart';
import 'package:pahadinatural/models/supplier.dart';
import 'package:pahadinatural/widgets/button_widget.dart';
import 'package:pahadinatural/widgets/tittle_widget.dart';


class PdfPage extends StatefulWidget {
  
    const PdfPage({Key? key}) : super(key: key);
  @override
  PdfPageState createState() => PdfPageState();
}

class PdfPageState extends State<PdfPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title:const Text("Gst Screen"),
          centerTitle: true,
        ),
        body: Container(
          padding:const EdgeInsets.all(32),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              const  TitleWidget(
                  icon: Icons.picture_as_pdf,
                  text: 'Generate Invoice',
                ),
                const SizedBox(height: 48),
                ButtonWidget(
                  text: 'Invoice PDF',
                  onClicked: () async {
                    final date = DateTime.now();
                    // final dueDate = date.add(Duration(days: 7));

                    final invoice = Invoice(
                      supplier: Supplier(
                        supplier: 'KAFAL',
                        address: 'Dankaniya',
                        state:'Uttarakhand',
                        statecode: 5
                        
                        
                      ),
                    
                      buyer: Buyer(
                        name: 'Kamal.',
                        address: 'Delhi Noida',
                      ),
                      info: Invoiceinfo(
                        date: date,
                        gstno: "09787876BHHHGF34",
                        taxinvoice:"17657787676",
                        fssai: "798YYUVJHVHJ",
                        orderno: "9056",
                      ),
                      items: [
                        InvoiceItem(
                          descriptionofgoods: 'Garlic Pickle',
                          hsncode: 16755,
                          quantity: 3,
                          quantityofpacket:250,
                          baseprice: 5.99,
                          csgstinper: "0%",
                          csgst: 0.00,
                          sgst: 0.00,
                          sgstinper: "5%",
                          igstper: "5%",
                          igst: 6.80
                        ),
                       
                       
                      ],
                    );

                    final pdfFile = await PdfInvoiceApi.generate(invoice);

                    PdfApi.openFile(pdfFile);
                  },
                ),
              ],
            ),
          ),
        ),
      );
}