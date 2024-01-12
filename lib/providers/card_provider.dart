import 'package:flutter/material.dart';
import 'package:pahadinatural/models/card_model.dart';

class CardProvider with ChangeNotifier {
  final List<CardModel> _cardList = [];

  List<CardModel> get cardList => _cardList;

  CardProvider() {
    _addDummyData();
  }

  void addCard(CardModel card) {
    _cardList.add(card);
    notifyListeners();
  }

  void _addDummyData() {
    for (int i = 0; i <= 3; i++) {
      addCard(CardModel(
          title: 'Gst$i',
          content: 'Content for Card $i',
          imageurl:
               '',
));
    }
  }
}
