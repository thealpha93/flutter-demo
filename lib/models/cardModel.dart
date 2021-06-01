import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class CardModel {
  // Run time constants
  final String id;
  final String name;
  final String cardNo;
  final String type;
  final double balance;
  final double amount;
  final Color primaryColor;
  final Color accentColor;
  final Color buttonColor;

  CardModel(
      {@required this.id,
      @required this.name,
      @required this.type,
      @required this.cardNo,
      @required this.amount,
      @required this.primaryColor,
      @required this.accentColor,
      @required this.buttonColor,
      @required this.balance});
}
