import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddressItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black12, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      width: 180,
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.all(Radius.circular(5))),
            width: 36,
            height: 38,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Home Address',
                  style: TextStyle(
                      color: Color(0xFF474749),
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.4),
                ),
                Text(
                  'Mustafa St. No:2',
                  style: TextStyle(
                      color: Color(0xFF474749),
                      fontSize: 8,
                      letterSpacing: 0.4),
                ),
                Text(
                  'Street x12',
                  style: TextStyle(
                      color: Color(0xFF474749),
                      fontSize: 8,
                      letterSpacing: 0.4),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
