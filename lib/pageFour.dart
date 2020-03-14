import 'package:flutter/material.dart';

import 'package:ui/utils/margin.dart';

class PageFour extends StatefulWidget {
  PageFour({Key key}) : super(key: key);

  @override
  _PageFourState createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f6f9),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  onPressed: () => print('Tap Here onTap'),
                  color: Colors.black,
                  iconSize: 28,
                  icon: Container(
                      margin: EdgeInsets.only(bottom: 5),
                      child: Image.asset('assets/images/menu.png')),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const XMargin(24),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'MEAL OPTIONS',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 19,
                      ),
                    ),
                    const YMargin(11),
                    Container(
                      height: 2,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(11)),
                    )
                  ],
                ),
                Spacer(),
                IconButton(
                  onPressed: () => print('Tap Here onTap'),
                  color: Colors.black,
                  iconSize: 28,
                  icon: Container(
                      margin: EdgeInsets.only(bottom: 5),
                      child: Image.asset(
                        'assets/images/settings.png',
                        scale: 5,
                      )),
                ),
                const XMargin(15),
              ],
            ),
          ),
          FoodWidget(
            image: 'pizza.jpeg',
            desc:
                'Browse the recommended meals that you\'re craving to help improve',
            percent: 89,
            title: 'Pizza',
          ),
          FoodWidget(
            image: 'egg.jpeg',
            desc:
                'Browse the recommended meals that you\'re craving to help improve',
            percent: 89,
            title: 'Egg',
          ),
          FoodWidget(
            image: 'beef.jpeg',
            desc:
                'Browse the recommended meals that you\'re craving to help improve',
            percent: 89,
            title: 'Rice',
          ),
          FoodWidget(
            image: 'burger.jpeg',
            desc:
                'Browse the recommended meals that you\'re craving to help improve',
            percent: 89,
            title: 'Burger',
          ),
        ],
      ),
    );
  }
}

class FoodWidget extends StatelessWidget {
  final String desc, title, image;
  final percent;
  const FoodWidget({
    Key key,
    @required this.desc,
    @required this.title,
    @required this.image,
    @required this.percent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: screenWidth(context, percent: 0.8),
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 23),
        height: 150,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.blue.withOpacity(0.1),
                  blurRadius: 26,
                  spreadRadius: -4),
            ],
            borderRadius: BorderRadius.circular(25)),
        child: Row(
          children: <Widget>[
            Container(
              height: 150,
              width: 99,
              margin: EdgeInsets.all(9),
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/$image')),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blue.withOpacity(0.1),
                        blurRadius: 26,
                        spreadRadius: -4),
                  ],
                  borderRadius: BorderRadius.circular(15)),
            ),
            const XMargin(4),
            Container(
              width: screenWidth(context, percent: 0.8) - 120,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const YMargin(23),
                  Row(
                    children: <Widget>[
                      Text(
                        title ?? '',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 19,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Match',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.blue,
                          fontSize: 11,
                        ),
                      ),
                      const XMargin(6),
                      Container(
                          height: 24,
                          width: 24,
                          child: Stack(
                            children: <Widget>[
                              CircularProgressIndicator(
                                value: percent/100,
                                strokeWidth: 2,
                                backgroundColor: Colors.grey[200],
                              ),
                              Center(
                                child: Text(
                                  '$percent%',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.blue,
                                    fontSize: 7,
                                  ),
                                ),
                              )
                            ],
                          ))
                    ],
                  ),
                  const YMargin(14),
                  Text(
                    desc,
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                        height: 1.3,
                        color: Colors.grey),
                  ),
                  const YMargin(21),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                          height: 19,
                          child: Image.asset('assets/images/sweets.png'))
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
