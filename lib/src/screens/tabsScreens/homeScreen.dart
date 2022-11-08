import 'package:flutter/material.dart';
import 'package:testproject/src/items/categoryItem.dart';
import 'dart:ui' as ui;
import '../../items/addresItem.dart';
import '../../items/dealItem.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color(0XFFEE6A61)
      ..style = PaintingStyle.fill
      ..strokeWidth = 15.23;

    Path path0 = Path();
    path0.moveTo(size.width * 0.2487500, size.height * 0.0840000);
    path0.lineTo(size.width * 0.2487500, size.height * 0.4860000);
    path0.lineTo(size.width * 0.2475000, size.height * 0.4940000);
    path0.lineTo(size.width * 0.9387500, size.height * 0.4980000);
    path0.lineTo(size.width * 0.9362500, size.height * 0.3580000);
    path0.lineTo(size.width * 0.7537500, size.height * 0.0960000);
    path0.lineTo(size.width * 0.2487500, size.height * 0.0840000);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      height: deviceSize.height - MediaQuery.of(context).padding.top,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 30, bottom: 5),
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(50)),
                height: 90,
                child: Row(
                  children: [
                    Container(
                      height: 44,
                      width: 133,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.pin_drop,
                            size: 18,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Mustafa St.',
                            style: TextStyle(color: Colors.white, fontSize: 11),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Color(0XFFee6a61),
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    Spacer(),
                    Container(
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(width: 2, color: Colors.black26)),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 0),
              child: Container(
                height: 48,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFf5f7f9),
                    border: Border.all(color: Colors.black12)),
                margin: const EdgeInsets.only(
                  bottom: 17,
                ),
                child: TextField(
                  onChanged: (val) {
                    setState(() {});
                  },
                  textAlignVertical: TextAlignVertical.center,
                  maxLines: 1,
                  cursorColor: Theme.of(context).primaryColor,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: InkWell(
                        child: Container(
                            height: 24,
                            width: 24,
                            child: Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: Icon(Icons.search))),
                      ),
                    ),
                    contentPadding: const EdgeInsets.only(
                        left: 16, top: 10, bottom: 15, right: 16),
                    border: InputBorder.none,
                    hintText: 'Search in thousands of products',
                    hintStyle: TextStyle(
                      color: Color(0xFFB9B9B9),
                      fontSize: 12,
                      letterSpacing: .29,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                height: 50,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 20,
                    itemBuilder: (context, i) => Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: AddressItem(),
                        )),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 16,
                ),
                Text(
                  'Explore by Category',
                  style: TextStyle(
                    fontSize: 11,
                    letterSpacing: .16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF474749),
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'See All ( 10 )',
                    style: TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF929294),
                    ),
                  ),
                ),
                SizedBox(
                  width: 17,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                height: 90,
                padding: EdgeInsets.only(
                  left: Localizations.localeOf(context).languageCode == 'en'
                      ? 16
                      : 0,
                  right: Localizations.localeOf(context).languageCode == 'en'
                      ? 0
                      : 16,
                  // left: 16
                ),
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (c, i) =>
                        InkWell(onTap: () {}, child: CategoryItem()),
                    separatorBuilder: (_, __) => SizedBox(
                          width: 12,
                        ),
                    itemCount: 10)),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 16,
                ),
                Text(
                  'Deals of the day',
                  style: TextStyle(
                    fontSize: 11,
                    letterSpacing: .16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF474749),
                  ),
                ),
                Spacer(),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                height: 100,
                padding: EdgeInsets.only(
                  left: Localizations.localeOf(context).languageCode == 'en'
                      ? 16
                      : 0,
                  right: Localizations.localeOf(context).languageCode == 'en'
                      ? 0
                      : 16,
                  // left: 16
                ),
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (c, i) =>
                        InkWell(onTap: () {}, child: DealItem()),
                    separatorBuilder: (_, __) => SizedBox(
                          width: 20,
                        ),
                    itemCount: 10)),
            SizedBox(height: 20),
            Center(
              child: Container(
                height: 120,
                child: Container(
                  height: 100,
                  child: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2.5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 27,
                          ),
                          Text(
                            'Mega',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0XFFd03a27),
                                fontSize: 10,
                                letterSpacing: 0.4),
                          ),
                          Row(
                            children: [
                              Text(
                                'WHOPP',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0XFF21114b),
                                    fontSize: 31,
                                    letterSpacing: 0.4),
                              ),
                              Text(
                                'E',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                    fontSize: 31,
                                    letterSpacing: 0.4),
                              ),
                              Text(
                                'R',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0XFF21114b),
                                    fontSize: 31,
                                    letterSpacing: 0.4),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                r'15 $',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.4),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                r'10 $',
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.4),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '* Available until 24 December 2020',
                            style: TextStyle(
                                fontSize: 9,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.4),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)),
                width: MediaQuery.of(context).size.width - 30,
              ),
            ),
            SizedBox(height: 150),
          ],
        ),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..lineTo(0, size.height - 0)
      ..lineTo(size.width, size.height / 2)
      ..lineTo(size.width / 2, size.height)
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
