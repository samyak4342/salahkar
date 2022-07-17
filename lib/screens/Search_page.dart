import 'package:flutter/material.dart';

import '../../constants/constant_color.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Padding(
      padding: EdgeInsets.all(20.0),
      child:Row(
        children: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
          ),
          Expanded(
            child:TextField(
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(Icons.search_rounded), onPressed: () {  },
                ),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                        Radius.circular(35)
                    ),
                    borderSide: BorderSide(
                        color: darkBlue,
                        width: 2
                    )
                ),
              ),

              )
            )
        ],
      )
        )
    );
  }
}