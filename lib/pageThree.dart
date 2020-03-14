import 'package:flutter/material.dart';
import 'package:ui/utils/margin.dart';

import 'package:flutter/cupertino.dart';

class PageThree extends StatefulWidget {
  PageThree({Key key}) : super(key: key);

  @override
  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://images.pexels.com/photos/1571460/pexels-photo-1571460.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'))),
          ),
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.62),
            ),
          ),
          Container(
            height: screenHeight(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                const YMargin(40),
                IconButton(
                  icon: Icon(Icons.more_horiz, color: Colors.white),
                  onPressed: () {},
                ),
                const YMargin(120),
                Padding(
                  padding: const EdgeInsets.only(left: 28.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'YOUR DREAM HOUSE',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 43,
                                  letterSpacing: 2,
                                  height: 1.4,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            const YMargin(12),
                            Text(
                              'BY NATE SEEDINGS',
                              style: TextStyle(
                                  fontSize: 14,
                                  letterSpacing: 1.2,
                                  height: 1.4,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.white70),
                            ),
                          ],
                        ),
                      ),
                      const YMargin(52),
                      Container(
                        height: 291,
                        width: screenWidth(context),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Container(
                              height: 261,
                              width: 203,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.white54, width: 3),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          'https://images.pexels.com/photos/1005058/pexels-photo-1005058.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'))),
                            ),
                            const XMargin(12),
                            Container(
                              height: 261,
                              width: 203,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.white54, width: 3),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          'https://images.pexels.com/photos/775219/pexels-photo-775219.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'))),
                            ),
                            const XMargin(12),
                            Container(
                              height: 261,
                              width: 203,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.white54, width: 3),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          'https://images.pexels.com/photos/271624/pexels-photo-271624.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'))),
                            )
                          ],
                        ),
                      ),
                      const YMargin(102),
                      // Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.favorite_border, color: Colors.white),
                            const XMargin(42),
                            FloatingActionButton(
                                onPressed: () {},
                                elevation: 0,
                                backgroundColor: Colors.white24,
                                child: Icon(Icons.add)),
                            const XMargin(42),
                            Icon(Icons.share, color: Colors.white),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
