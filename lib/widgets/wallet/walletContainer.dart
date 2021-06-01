import 'package:flutter/material.dart';
import 'package:savemo_demo/models/wallets.dart';
import 'package:savemo_demo/widgets/shared/header.dart';
import 'package:savemo_demo/widgets/wallet/walletItem.dart';

class WalletContainer extends StatelessWidget {
  final String title;
  final String number;
  final List<Wallet> wallets;

  WalletContainer(this.number, this.title, this.wallets);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                Header(number, title),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  height: 170.0,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: wallets.length,
                      itemBuilder: (context, index) {
                        return Card(
                          elevation: 10,
                          color: wallets[index].accentColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(22),
                                  bottomRight: Radius.circular(22)),
                              color: wallets[index].primaryColor,
                            ),
                            margin: EdgeInsets.only(
                              bottom: 3,
                            ),
                            width: MediaQuery.of(context).size.width / 1.75,
                            child: WalletItem(wallets[index]),
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
          // )
        ],
      ),
    );
  }
}
