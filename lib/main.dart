import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currency_card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFF181818),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              "Hey SungWoo",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "Welcome back",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  fontSize: 13),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 90,
                    ),
                    Text(
                      "Total Balance",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    const Text(
                      "\$ 5 194 382",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Mybutton(
                          text: "Transfer",
                          bgColor: Colors.amber,
                          textColor: Colors.black,
                        ),
                        Mybutton(
                          text: "Request",
                          bgColor: Colors.black38,
                          textColor: Colors.white,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 90,
                    ),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Wallet",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          "view all",
                          style: TextStyle(fontSize: 17, color: Colors.white60),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    const CurrnecyCard(
                      bigCurrency: "Euro",
                      numCurrency: "6 428",
                      smallCurrency: "euro",
                      bgColor: Color(0xFF1F2123),
                      icon: Icons.euro,
                      isInverted: false,
                      offsetY: 0,
                    ),
                    const CurrnecyCard(
                      bigCurrency: "bitCoin",
                      numCurrency: "9 785",
                      smallCurrency: "coin",
                      bgColor: Color(0xFF1F2123),
                      icon: Icons.currency_bitcoin,
                      isInverted: true,
                      offsetY: -40,
                    ),
                    const CurrnecyCard(
                      bigCurrency: "dollar",
                      numCurrency: "9 785",
                      smallCurrency: "dollar",
                      bgColor: Color(0xFF1F2123),
                      icon: Icons.money_off_outlined,
                      isInverted: false,
                      offsetY: -80,
                    ),
                  ]),
            ),
          )),
    );
  }
}
