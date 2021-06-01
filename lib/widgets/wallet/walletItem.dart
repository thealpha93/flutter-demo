import 'package:flutter/material.dart';
import 'package:savemo_demo/models/wallets.dart';

class WalletItem extends StatelessWidget {
  final Wallet item;

  WalletItem(this.item);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              children: [
                Container(
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/SBI-logo.svg/500px-SBI-logo.svg.png'),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      item.name,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      child: Text('Spent this month'),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Text(
                        '\$ ${item.amount}',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
