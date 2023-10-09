import 'package:flutter/material.dart';

class CurrnecyCard extends StatelessWidget {
  final String bigCurrency;
  final String numCurrency;
  final String smallCurrency;
  final Color bgColor;
  final IconData icon;
  final bool isInverted;
  final double offsetY;

  final blackColor = const Color(0xFF1F2123);

  const CurrnecyCard({
    super.key,
    required this.bigCurrency,
    required this.numCurrency,
    required this.smallCurrency,
    required this.bgColor,
    required this.icon,
    required this.isInverted, required this.offsetY,
  });

  @override
  Widget build(BuildContext context) {
    return  Transform.translate(
      offset: Offset(0, offsetY),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: isInverted ? Colors.white : bgColor,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bigCurrency,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: isInverted ? blackColor : Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Text(
                          numCurrency,
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: isInverted ? blackColor : Colors.white),
                        ),
                      ),
                      Text(
                        smallCurrency,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: isInverted ? blackColor : Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                scale: 2.3,
                child: Transform.translate(
                  offset: const Offset(-5, 10),
                  child: Icon(
                    icon,
                    color: Colors.amber,
                    size: 87,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
