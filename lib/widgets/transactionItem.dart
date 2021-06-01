import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 5),
          width: (MediaQuery.of(context).size.width - 45) * 0.2,
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Theme.of(context).backgroundColor,
            child: Padding(
              padding: EdgeInsets.all(6),
              child: FittedBox(
                child: Icon(
                  Icons.refresh,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
        ),
        Container(
          width: (MediaQuery.of(context).size.width - 45) * 0.8,
          decoration: BoxDecoration(
              // border: Border.all(
              //     color: Colors.blue, width: 1),
              ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        child: Text(
                      'Gokul sdbnsj',
                      style: TextStyle(fontSize: 20),
                    )),
                    Container(
                        child: Text(
                      '\$500',
                      style: TextStyle(color: Colors.red, fontSize: 18),
                    )),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 4, vertical: 3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green),
                        child: Row(
                          children: [
                            Icon(
                              Icons.mic,
                              size: 12,
                            ),
                            Text(
                              'TRANSFER',
                              style: TextStyle(color: Colors.grey[300]),
                            )
                          ],
                        )),
                    Container(
                        child: Row(
                      children: [
                        Text(
                          'via ',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          'Axis Bank Bank Account',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Thu May 6 11:52 PM',
                      style: TextStyle(fontSize: 12),
                    ),
                    Container(
                      child: Text('ghost transaction'),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
