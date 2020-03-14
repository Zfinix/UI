import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'utils/margin.dart';

final yellow = Color(0xffc7d61d);

class PageSeven extends StatefulWidget {
  PageSeven({Key key}) : super(key: key);

  @override
  _PageSevenState createState() => _PageSevenState();
}

class _PageSevenState extends State<PageSeven> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(18.0)
                .add(EdgeInsets.symmetric(horizontal: 20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const YMargin(70),
                Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(2.5),
                      decoration: BoxDecoration(
                          color: yellow,
                          borderRadius: BorderRadius.circular(120)),
                      child: CircleAvatar(
                        radius: 22,
                        backgroundImage: NetworkImage(
                            'https://pbs.twimg.com/profile_images/1156437918539571200/a_kmCRe3_400x400.jpg'),
                      ),
                    ),
                    Spacer(),
                    InkResponse(
                      child: Image.asset(
                        'assets/images/notif.png',
                        scale: 3.2,
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                const YMargin(60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text('Discover',
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w800,
                              color: Colors.black,
                              fontSize: 29,
                              height: 1.4),
                        )),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text('Show All',
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[400],
                              fontSize: 13,
                            ),
                          )),
                    ),
                  ],
                ),
                const YMargin(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    DiscoverItems('canoe', 'Kayaking'),
                    DiscoverItems('land', 'Hiking'),
                    DiscoverItems('bike2', 'Cycling'),
                    DiscoverItems('scuba', 'Snorkeling'),
                  ],
                ),
                const YMargin(90),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text('Adventures',
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w800,
                              color: Colors.black,
                              fontSize: 29,
                              height: 1.4),
                        )),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 38,
              right: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text('Experiences',
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: yellow,
                          fontSize: 19,
                          height: 1.4),
                    )),
                Text('Places',
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[400],
                          fontSize: 19,
                          height: 1.4),
                    )),
                Text('Information',
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[400],
                          fontSize: 19,
                          height: 1.4),
                    )),
              ],
            ),
          ),
          const YMargin(10),
          Container(
              width: screenWidth(context),
              height: 330,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 190,
                    height: 320,
                    margin: EdgeInsets.only(top: 25, left: 25, bottom: 25),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Eluama Village\nAbia',
                            style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 18,
                                  height: 1.4),
                            )),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: yellow,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(yellow.withOpacity(0.2), BlendMode.srcOver),
                            image: AssetImage(
                                'assets/images/img2.png'))),
                  ),
                  Container(
                    width: 190,
                    height: 320,
                    margin: EdgeInsets.all(25),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Mbiama Village\nBayelsa',
                            style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 18,
                                  height: 1.4),
                            )),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: yellow,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                           colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.srcOver),
                             fit: BoxFit.cover,
                             image: AssetImage(
                                'assets/images/img3.png'))),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

class DiscoverItems extends StatelessWidget {
  final String image, text;
  const DiscoverItems(
    this.image,
    this.text,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Image.asset(
          'assets/images/$image.png',
          scale: 2.2,
        ),
        const YMargin(7),
        Text(text ?? '',
            style: GoogleFonts.lato(
              textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[700],
                fontSize: 14,
              ),
            )),
      ],
    );
  }
}
