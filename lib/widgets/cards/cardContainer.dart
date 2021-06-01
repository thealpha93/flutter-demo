import 'package:flutter/material.dart';

// Internal imports
import 'package:savemo_demo/models/cardModel.dart';
import 'package:savemo_demo/screens/cardDetails.dart';
import 'package:savemo_demo/widgets/shared/header.dart';
import 'package:savemo_demo/widgets/cards/cardItem.dart';

class CardContainer extends StatelessWidget {
  final String title;
  final String number;
  final List<CardModel> cards;
  CardContainer(this.number, this.title, this.cards);

  void _navigate(BuildContext ctx, CardModel card) {
    // Navigator.of(ctx).pushNamed('/singleCard', arguments: card);
    Navigator.of(ctx).push(PageRouteBuilder(
        fullscreenDialog: true,
        transitionDuration: Duration(milliseconds: 1000),
        pageBuilder: (BuildContext ctx, Animation<double> animation,
            Animation<double> secondaryAnimation) {
          return CardDetails(card);
        },
        transitionsBuilder: (BuildContext ctx, Animation<double> animation,
            Animation<double> secondaryAnimation, Widget child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        }));
    ;
  }

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
                  height: 320.0,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: cards.length,
                      itemBuilder: (ctx, index) {
                        return InkWell(
                          onTap: () => _navigate(context, cards[index]),
                          borderRadius: BorderRadius.circular(20),
                          splashColor: Colors.amber,
                          child: Hero(
                            tag: cards[index].id,
                            child: Material(
                              child: Card(
                                elevation: 10,
                                color: cards[index].accentColor,
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
                                    color: cards[index].primaryColor,
                                  ),
                                  margin: EdgeInsets.only(
                                    bottom: 3,
                                  ),
                                  width:
                                      MediaQuery.of(context).size.width / 1.75,
                                  child: CardItem(cards[index]),
                                ),
                              ),
                            ),
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
