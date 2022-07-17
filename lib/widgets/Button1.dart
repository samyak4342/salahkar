import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';

class Button1 extends StatelessWidget {
Button1({Key? key, required this.text, required this.onTap,})
    : super(key: key);
final String text;
final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child:Container(
        alignment: Alignment.bottomCenter,
        width: double.infinity,
        height: 54,
        decoration: BoxDecoration(
          color: Color.fromRGBO(7, 82, 100, 1),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(this.text,
                  textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.bold,
                      height: 1
                  ),),
              ],
            )
        ),
      ),
    );
  }
}
