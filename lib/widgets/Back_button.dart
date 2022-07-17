import 'package:flutter/material.dart';

import '../constants/constant_color.dart';

class BackButton  extends StatefulWidget {

  @override
  State<BackButton> createState() => _BackButtonState();
}

class _BackButtonState extends State<BackButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: (){
        Navigator.pop(context);
      },
      icon: Icon(Icons.arrow_back_ios,color: white,),
    );
  }
}
