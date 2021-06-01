import 'package:flutter/material.dart';
import 'package:savemo_demo/models/cardModel.dart';
import 'package:savemo_demo/models/transactions.dart';
import 'package:savemo_demo/widgets/cards/cardItemVertical.dart';
import 'package:savemo_demo/widgets/transactionItem.dart';

import 'package:sliding_sheet/sliding_sheet.dart';

class CardDetails extends StatefulWidget {
  final CardModel card;

  CardDetails(this.card);
  @override
  _CardDetailsState createState() => _CardDetailsState();
}

class _CardDetailsState extends State<CardDetails>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<Size> _heightAnimation;
  Animation<Offset> _slideAnimation;
  Animation<double> _opacityAnimation;
  Animation<double> _turnRight;
  Animation<double> _turnLeft;
  CardModel card;
  bool showFront = true;

  @override
  void initState() {
    super.initState();
    card = widget.card;

    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));

    _heightAnimation = Tween<Size>(
            begin: Size(double.infinity, 300), end: Size(double.infinity, 500))
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));

    _opacityAnimation = Tween(begin: 0.0, end: 1.0)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));

    _turnRight = Tween(begin: 0.0, end: 0.25)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));

    _turnLeft = Tween(begin: 0.25, end: 0.0)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));

    _slideAnimation = Tween<Offset>(begin: Offset(0, -1.5), end: Offset(0, 0))
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));
    _controller.forward();
    // _heightAnimation.addListener(() {
    //   print('object');
    // setState(() {});
    // });
  }

  @override
  void dispose() {
    // showFront = true;
    _controller.reverse();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final CardModel card = ModalRoute.of(context).settings.arguments;
    final List<Transactions> transactionList = [
      Transactions(
          id: 't1',
          name: 'Gokul',
          bankName: card.name,
          amount: 120,
          isTransfer: true),
      Transactions(
          id: 't2',
          name: 'Justin',
          bankName: card.name,
          amount: 140,
          isTransfer: false),
      Transactions(
          id: 't3',
          name: 'Vignesh',
          bankName: card.name,
          amount: 160,
          isTransfer: true),
      Transactions(
          id: 't4',
          name: 'Rinu',
          bankName: card.name,
          amount: 90,
          isTransfer: true),
      Transactions(
          id: 't5',
          name: 'Aakash',
          bankName: card.name,
          amount: 900,
          isTransfer: true),
      Transactions(
          id: 't6',
          name: 'Abhirami',
          bankName: card.name,
          amount: 60,
          isTransfer: false),
    ];

    return Scaffold(
        // appBar: AppBar(),
        body: SlidingSheet(
      elevation: 8,
      cornerRadius: 16,
      snapSpec: const SnapSpec(
        // Enable snapping. This is true by default.
        snap: true,
        // Set custom snapping points.
        snappings: [0.6, 1.0],
        // Define to what the snappings relate to. In this case,
        // the total available space that the sheet can expand to.
        positioning: SnapPositioning.relativeToAvailableSpace,
      ),
      // The body widget will be displayed under the SlidingSheet
      // and a parallax effect can be applied to it.
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: card.id,
                child: RotationTransition(
                  turns: showFront ? _turnRight : _turnLeft,
                  child: Card(
                    elevation: 10,
                    color: card.accentColor,
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
                        color: card.primaryColor,
                      ),
                      margin: EdgeInsets.only(bottom: 3),
                      // width: MediaQuery.of(context).size.width - 30,
                      width: MediaQuery.of(context).size.width / 1.75,
                      // child: CardItemHorizontal(card),
                      // child: CardItem(card),
                      child: CardItemVertical(card),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      builder: (context, state) {
        // This is the content of the sheet that will get
        // scrolled, if the content is bigger than the available
        // height of the sheet.
        return Container(
          // height: MediaQuery.of(context).size.height,
          child: Center(
            child: Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          'Recent Transactions',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 30,
                    decoration: BoxDecoration(
                        color: Colors.grey[900],
                        border: Border.all(color: Colors.grey, width: 0.5),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            color: Colors.black,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Spends done in May 2021',
                                style: TextStyle(color: Colors.grey[300]),
                              ),
                              Text('\$8921'),
                            ],
                          ),
                        ),
                        Container(
                            decoration: BoxDecoration(
                                // border: Border.all(color: Colors.green, width: 1),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[800]),
                            margin: EdgeInsets.only(
                                top: 10, left: 5, right: 5, bottom: 10),
                            child: TransactionItem()),
                        Container(
                            decoration: BoxDecoration(
                                // border: Border.all(color: Colors.green, width: 1),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[800]),
                            margin: EdgeInsets.only(
                                top: 10, left: 5, right: 5, bottom: 10),
                            child: TransactionItem()),
                        Container(
                            decoration: BoxDecoration(
                                // border: Border.all(color: Colors.green, width: 1),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[800]),
                            margin: EdgeInsets.only(
                                top: 10, left: 5, right: 5, bottom: 10),
                            child: TransactionItem()),
                        Container(
                            decoration: BoxDecoration(
                                // border: Border.all(color: Colors.green, width: 1),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[800]),
                            margin: EdgeInsets.only(
                                top: 10, left: 5, right: 5, bottom: 10),
                            child: TransactionItem()),
                        Container(
                            decoration: BoxDecoration(
                                // border: Border.all(color: Colors.green, width: 1),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[800]),
                            margin: EdgeInsets.only(
                                top: 10, left: 5, right: 5, bottom: 10),
                            child: TransactionItem()),
                        Container(
                            decoration: BoxDecoration(
                                // border: Border.all(color: Colors.green, width: 1),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[800]),
                            margin: EdgeInsets.only(
                                top: 10, left: 5, right: 5, bottom: 10),
                            child: TransactionItem()),
                        Container(
                            decoration: BoxDecoration(
                                // border: Border.all(color: Colors.green, width: 1),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[800]),
                            margin: EdgeInsets.only(
                                top: 10, left: 5, right: 5, bottom: 10),
                            child: TransactionItem()),
                        Container(
                            decoration: BoxDecoration(
                                // border: Border.all(color: Colors.green, width: 1),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[800]),
                            margin: EdgeInsets.only(
                                top: 10, left: 5, right: 5, bottom: 10),
                            child: TransactionItem()),
                        Container(
                            decoration: BoxDecoration(
                                // border: Border.all(color: Colors.green, width: 1),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[800]),
                            margin: EdgeInsets.only(
                                top: 10, left: 5, right: 5, bottom: 10),
                            child: TransactionItem()),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    ));
  }
}
