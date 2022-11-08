import 'package:flutter/material.dart';

class DealItem extends StatefulWidget {
  const DealItem({Key? key}) : super(key: key);

  @override
  State<DealItem> createState() => _DealItemState();
}

class _DealItemState extends State<DealItem> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color(0XFFb0eafd)),
              ),
              Positioned(
                top: -22,
                left: 0,
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: InkWell(
                    onTap: () {
                      if (isFavorite == true) {
                        setState(() {
                          isFavorite = false;
                        });
                      } else {
                        setState(() {
                          isFavorite = true;
                        });
                      }
                    },
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Icon(
                          isFavorite == true
                              ? Icons.favorite
                              : Icons.favorite_border,
                          size: 15,
                          color: isFavorite == true
                              ? Colors.red
                              : Color(0XFFcbcbcb),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Summer Sun Ice Cream Pack',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0XFF474749),
                    fontSize: 10,
                    letterSpacing: 0.4),
              ),
              Text(
                'Pieces 5',
                style: TextStyle(
                    color: Color(0xFF474749), fontSize: 9, letterSpacing: 0.4),
              ),
              Text(
                '15 Minutes Away',
                style: TextStyle(
                    color: Color(0xFF474749), fontSize: 9, letterSpacing: 0.4),
              ),
              Row(
                children: [
                  Text(
                    r'15 $',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 10,
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
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.4),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
