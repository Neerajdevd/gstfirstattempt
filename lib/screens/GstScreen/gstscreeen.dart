import 'package:flutter/material.dart';
import 'package:pahadinatural/providers/card_provider.dart';
import 'package:pahadinatural/screens/GstScreen/gstfile.dart';
import 'package:provider/provider.dart';

class GstPdfScreen extends StatefulWidget {
  
  const GstPdfScreen({
    super.key,
  });

  @override
  State<GstPdfScreen> createState() => _GstPdfScreenState();
}

class _GstPdfScreenState extends State<GstPdfScreen> {
  @override
  Widget build(BuildContext context) {
    var cardProvider = Provider.of<CardProvider>(context);
    return Scaffold(
        appBar: AppBar(
            title: const Text(
              "Gst Report",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios))),
        body: ListView.builder(
          itemCount: cardProvider.cardList.length,
          itemBuilder: ((context, index) {
            var card = cardProvider.cardList[index];
            return GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return  GstfileShowing(gstimg: card.imageurl);
                }));
              },
              child: Card(
                child: ListTile(
                  title: Text(card.title),
                ),
              ),
            );
          }),
        ));
  }
}
