import 'package:flutter/material.dart';
import 'package:savemo_demo/models/cardModel.dart';

class CardItemHorizontal extends StatelessWidget {
  final CardModel item;

  CardItemHorizontal(this.item);
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
                        'https://www.nfcw.com/wp-content/uploads/2020/06/axis-bank-logo.jpg'),
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Text('Available balance'),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Text(
                            '\$ ${item.balance}',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Column(
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
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            '\$ ${item.amount}',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text(
                        '**** **** **** ${item.cardNo.substring(item.cardNo.length - 4)}',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          color: item.buttonColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: Text(
                        item.type.toUpperCase(),
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: [
                //     Container(
                //       margin: EdgeInsets.only(top: 10, bottom: 10),
                //       padding: EdgeInsets.all(7),
                //       decoration: BoxDecoration(
                //           color: item.buttonColor,
                //           borderRadius: BorderRadius.circular(15)),
                //       child: Text(
                //         item.type.toUpperCase(),
                //         style: TextStyle(
                //             fontSize: 15, fontWeight: FontWeight.bold),
                //       ),
                //     ),
                //   ],
                // )
              ],
            ),
          )
        ],
      ),
    );
  }
}
