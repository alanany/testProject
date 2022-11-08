//@dart=2.9
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:testproject/src/items/categoryItem.dart';
import 'dart:ui' as ui;
import '../../fetchModel/editCartItemsVM.dart';
import '../../items/addresItem.dart';
import '../../items/cartItem.dart';
import '../../items/dealItem.dart';
import '../../models/productModel.dart';

class CartScreen extends StatefulWidget {
  static const routeName = '/cart screen';

  const CartScreen({Key key}) : super(key: key);

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

class _HomeScreenState extends State<CartScreen> {
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 16,
                ),
                Text(
                  'Cart',
                  style: TextStyle(
                    fontSize: 15,
                    letterSpacing: .16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF474749),
                  ),
                ),
              ],
            ),
            Container(
                height: MediaQuery.of(context).size.height,
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
                    itemBuilder: (c, index) => InkWell(
                        onTap: () {},
                        child: CartItem(
                            quantity: prds[index]['quantity'],
                            label: prds[index]['name'],
                            price: prds[index]['price'])),
                    separatorBuilder: (_, __) => SizedBox(
                          height: 10,
                        ),
                    itemCount: prds.length)),
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
