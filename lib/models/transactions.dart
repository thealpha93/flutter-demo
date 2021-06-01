import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class Transactions {
  // Run time constants
  final String id;
  final String name;
  final String bankName;
  final double amount;
  final bool isTransfer;

  Transactions({
    @required this.id,
    @required this.name,
    @required this.bankName,
    @required this.amount,
    @required this.isTransfer,
  });
}
