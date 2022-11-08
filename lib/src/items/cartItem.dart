//@dart=2.9
import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  int quantity;

  final String label;
  final dynamic price;
  CartItem({
    this.quantity,
    this.label,
    this.price,
  });
  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 100,
      child: Row(
        children: [
          Container(
            width: 66,
            height: 66,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color(0XFFb0eafd)),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                widget.label ?? '',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0XFF474749),
                    fontSize: 12,
                    letterSpacing: 0.4),
              ),
              Text(
                'Pieces ${widget.quantity}',
                style: TextStyle(
                    color: Color(0xFF474749), fontSize: 9, letterSpacing: 0.4),
              ),
              Row(
                children: [
                  Text(
                    '${widget.price}',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.4),
                  ),
                  Text(
                    r' $',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.4),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        widget.quantity++;
                      });
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0XFFb0eafd)),
                        child: Center(
                            child: Icon(
                          Icons.add,
                          color: Color(0XFF47b6da),
                        ))),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    widget.quantity.toString(),
                    style: TextStyle(fontSize: 19, color: Color(0XFF424242)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      if (widget.quantity > 1)
                        setState(() {
                          widget.quantity--;
                        });
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0XFFb0eafd)),
                        child: Center(
                            child: Icon(
                          Icons.remove,
                          color: Color(0XFF47b6da),
                        ))),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
