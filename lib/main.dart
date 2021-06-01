import 'package:flutter/material.dart';

import 'package:savemo_demo/models/cardModel.dart';
import 'package:savemo_demo/models/wallets.dart';
import 'package:savemo_demo/screens/cardDetails.dart';
import 'package:savemo_demo/widgets/bottomNav.dart';
import 'package:savemo_demo/widgets/cards/cardContainer.dart';
import 'package:savemo_demo/widgets/wallet/walletContainer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SaveMo Demo',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        accentColor: Colors.lightBlue,
        primarySwatch: Colors.blue,
      ),
      // home: MyHomePage(),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => MyHomePage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        // '/singleCard': (context) => CardDetails(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<CardModel> cardList = [
    CardModel(
        id: 'c1',
        name: 'Axis',
        cardNo: '1234 5678 1234 5678',
        amount: 99.9,
        type: 'SAVINGS',
        balance: 1000,
        primaryColor: Colors.purple[500],
        buttonColor: Colors.purple[800],
        accentColor: Colors.purpleAccent),
    CardModel(
        id: 'c2',
        name: 'Icici',
        cardNo: '1234 5678 1234 5678',
        amount: 93.9,
        type: 'CURRENT',
        balance: 1500,
        primaryColor: Colors.lightBlue[500],
        buttonColor: Colors.lightBlue[800],
        accentColor: Colors.lightBlueAccent),
    CardModel(
        id: 'c3',
        name: 'SBI',
        cardNo: '1234 5678 1234 5678',
        amount: 45.9,
        type: 'SAVINGS',
        balance: 1100,
        primaryColor: Colors.orange[500],
        buttonColor: Colors.orange[800],
        accentColor: Colors.orangeAccent),
    CardModel(
        id: 'c4',
        name: 'BOI',
        cardNo: '1234 5678 1234 5678',
        amount: 56.9,
        type: 'CURRENT',
        balance: 1300,
        primaryColor: Colors.red[500],
        buttonColor: Colors.red[800],
        accentColor: Colors.redAccent),
    CardModel(
        id: 'c5',
        name: 'HDFC',
        cardNo: '1234 5678 1234 5678',
        amount: 79.9,
        type: 'SAVINGS',
        balance: 1050,
        primaryColor: Colors.green[500],
        buttonColor: Colors.green[800],
        accentColor: Colors.greenAccent),
  ];

  final List<Wallet> walletList = [
    Wallet(
        id: 'w1',
        name: 'Flipkart',
        amount: 0.0,
        primaryColor: Colors.green[500],
        accentColor: Colors.greenAccent),
    Wallet(
        id: 'w2',
        name: 'Amazon',
        amount: 10.0,
        primaryColor: Colors.red[500],
        accentColor: Colors.redAccent),
    Wallet(
        id: 'w3',
        name: 'Gpay',
        amount: 15.0,
        primaryColor: Colors.orange[500],
        accentColor: Colors.orangeAccent),
    Wallet(
        id: 'w4',
        name: 'Paytm',
        amount: 60.0,
        primaryColor: Colors.purple[500],
        accentColor: Colors.purpleAccent),
  ];

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CardContainer(cardList.length.toString(), 'My Cards', cardList),
              WalletContainer(
                  walletList.length.toString(), 'My Wallets', walletList),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
