import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class Wallet {
  // Run time constants
  final String id;
  final String name;
  final double amount;
  final Color primaryColor;
  final Color accentColor;

  Wallet({
    @required this.id,
    @required this.name,
    @required this.amount,
    @required this.primaryColor,
    @required this.accentColor,
  });
}
