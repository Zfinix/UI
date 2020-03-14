import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/utils/margin.dart';

class PageNine extends StatefulWidget {
  PageNine({Key key}) : super(key: key);

  @override
  _PageNineState createState() => _PageNineState();
}

class _PageNineState extends State<PageNine> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      child: Stack(
        children: <Widget>[
          Container(
            height: screenHeight(context),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(data[i]['image']))),
          ),
          Positioned.fill(
            child: Container(
                constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.7),
                )),
          ),
          Column(
            children: <Widget>[
              const YMargin(40),
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 24,
                    ),
                    onPressed: () {},
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 24,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              Container(
                height: screenHeight(context, percent: 0.8),
                margin: EdgeInsets.all(20),
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return LocateItems(
                      image: data[index]['image'],
                      text: data[index]['text'],
                      place: data[index]['place'],
                      price: data[index]['price'],
                      index: index,
                    );
                  },
                  onIndexChanged: (val) {
                    setState(() {
                      i = val;
                    });
                  },
                  itemWidth: screenWidth(context),
                  
                  itemHeight: screenHeight(context, percent: 0.8),
                  layout: SwiperLayout.CUSTOM,
                  customLayoutOption: new CustomLayoutOption(
                          startIndex: 0, stateCount: 3)
                      .addRotate([-45.0 / 180, 0.0, 12 ]).addTranslate([
                    new Offset(100.0, -50.0),
                    new Offset(0.0, 0.0),
                    new Offset(670.0, -10.0)
                  ]),
                  itemCount: data.length,
                ),
              ),
              // const YMargin(90)
            ],
          ),
        ],
      ),
    ));
  }
}

class LocateItems extends StatelessWidget {
  final String image, price, place, text;
  final int index;
  const LocateItems({
    Key key,
    this.image,
    this.price,
    this.place,
    this.text,
    this.index = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context, percent: 0.8),
      width: screenWidth(context),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(9),
        child: Stack(
          children: <Widget>[
            Container(
              height: screenHeight(context),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(image))),
            ),
            Positioned.fill(
              child: Container(
                  constraints: BoxConstraints.expand(),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      // Where the linear gradient begins and ends
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      // Add one stop for each color. Stops should increase from 0 to 1
                      stops: [0.3, 1],
                      colors: [
                        // Colors are easy thanks to Flutter's Colors class.
                        Colors.transparent,
                        Colors.black.withOpacity(0.4),
                      ],
                    ),
                  )),
            ),
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  height: screenHeight(context),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Spacer(),
                      Icon(
                        Icons.bookmark,
                        color: Color(0xffff8410),
                        size: 44,
                      ),
                      const YMargin(7),
                      Text(text,
                          style: GoogleFonts.cabin(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 18,
                                height: 1.4),
                          )),
                      const YMargin(11),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: Colors.white,
                            size: 15,
                          ),
                          const XMargin(2),
                          Text(place,
                              style: GoogleFonts.cabin(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                    fontSize: 15,
                                    height: 1.4),
                              )),
                          Spacer(),
                          Container(
                            height: 3,
                            width: index == 0 ? 17 : 9,
                            decoration: BoxDecoration(
                                color: index == 0
                                    ? Color(0xffff8410)
                                    : Colors.grey,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          const XMargin(3),
                          Container(
                            height: 3,
                            width: index == 1 ? 17 : 9,
                            decoration: BoxDecoration(
                                color: index == 1
                                    ? Color(0xffff8410)
                                    : Colors.grey,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          const XMargin(3),
                          Container(
                            height: 3,
                            width: index == 2 ? 17 : 9,
                            decoration: BoxDecoration(
                                color: index == 2
                                    ? Color(0xffff8410)
                                    : Colors.grey,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ],
                      ),
                      const YMargin(15),
                      RichText(
                        text: TextSpan(
                            text: 'Starting from  ',
                            style: GoogleFonts.cabin(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  height: 1.4),
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: '\$$price.00',
                                  style: GoogleFonts.cabin(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        fontSize: 19,
                                        height: 1.4),
                                  )),
                            ]),
                      ),
                      const YMargin(20),
                      Container(
                        width: screenWidth(context),
                        height: 64,
                        child: FlatButton(
                          color: Color(0xffff8410),
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(9),
                            topRight: Radius.circular(9),
                            bottomLeft: Radius.circular(29),
                            bottomRight: Radius.circular(29),
                          )),
                          child: Text('Book Now',
                              style: GoogleFonts.cabin(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                    height: 1.4),
                              )),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

var data = [
  {
    'image':
        'https://images.pexels.com/photos/169677/pexels-photo-169677.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    'text': 'These Cities are\nbeautiful!',
    'place': 'Sydney',
    'price': '4290',
  },
  {
    'image':
        'https://images.pexels.com/photos/1590882/pexels-photo-1590882.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
    'text': 'These dark castles are\nbeautiful!',
    'place': 'England',
    'price': '3024',
  },
  {
    'image':
        'https://images.pexels.com/photos/36717/amazing-animal-beautiful-beautifull.jpg?auto=compress&cs=tinysrgb&dpr=2&w=500',
    'text': 'These Trees castles are\nbeautiful!',
    'place': 'Austria',
    'price': '5034',
  },
];
