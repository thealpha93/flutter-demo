import 'package:flutter/material.dart';
import 'package:savemo_demo/models/cardModel.dart';

class CardItemVertical extends StatelessWidget {
  final CardModel item;

  CardItemVertical(this.item);
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
                    backgroundColor: Colors.transparent,
                    // backgroundImage: NetworkImage(
                    //     'https://www.nfcw.com/wp-content/uploads/2020/06/axis-bank-logo.jpg'),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      '',
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
                      child: Text(''),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Text(
                        '',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
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
                      child: Text(''),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        '',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  '',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                padding: EdgeInsets.all(7),
                // decoration: BoxDecoration(
                //     color: item.buttonColor,
                //     borderRadius: BorderRadius.circular(15)),
                child: Text(
                  '',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
