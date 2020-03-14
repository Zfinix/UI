import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'utils/margin.dart';

class PageTen extends StatefulWidget {
  PageTen({Key key}) : super(key: key);

  @override
  _PageTenState createState() => _PageTenState();
}

class _PageTenState extends State<PageTen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f6fa),
      body: Column(
        children: <Widget>[
          const YMargin(50),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  elevation: 0,
                  backgroundColor: Colors.white,
                  onPressed: () {},
                  child: Icon(
                    CupertinoIcons.settings,
                    size: 34,
                    color: Colors.blue,
                  ),
                ),
                CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                      'https://pbs.twimg.com/profile_images/1156437918539571200/a_kmCRe3_400x400.jpg'),
                ),
                FloatingActionButton(
                  elevation: 0,
                  backgroundColor: Colors.white,
                  onPressed: () {},
                  child: Icon(
                    CupertinoIcons.pencil,
                    size: 34,
                    color: Colors.blue,
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
