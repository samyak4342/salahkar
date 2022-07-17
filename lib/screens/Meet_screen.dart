import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/constant_color.dart';

class MeetScreen extends StatefulWidget {
  @override
  _MeetScreenState createState() => _MeetScreenState();
}



class _MeetScreenState extends State<MeetScreen> {

  String dropdownvalue = 'Completed';

  // List of items in our dropdown menu
  var items = [
  'Completed',
  'Upcoming',
  'Cancelled',
  ];

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child:Scaffold(
        backgroundColor: Colors.white,
        body:SingleChildScrollView(
            child:Column(
                children:[
                  Container(
                      child: Stack(
                          children: <Widget>[
                            Positioned(
                              child: Container(
                                height: 300,
                                decoration: BoxDecoration(
                                  color: white,
                                ),

                              ),
                            ),
                            Positioned(
                                child:Container(
                                  height: 160,
                                  decoration: BoxDecoration(
                                      color: darkBlue
                                  ),
                                  child:Container(
                                      padding: EdgeInsets.all(25),
                                      alignment: Alignment.topLeft,
                                      child:Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              width: 150,
                                              child:Row(
                                                  children:[
                                                    Flexible(

                                                        child:IconButton(
                                                          onPressed: (){},
                                                          icon: Icon(Icons.arrow_back_ios,color: white,),
                                                        ) ),
                                                    Flexible(

                                                      child:Text('Meets',style:TextStyle(
                                                          fontFamily:'Poppins',
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 20,
                                                          color: white),),
                                                    ),
                                                  ]
                                              ),
                                            ),
                                            Container(
                                              width: 40,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  color:white,
                                                ),
                                                child:IconButton(
                                                  onPressed: (){},
                                                  icon: Icon(Icons.settings,color: darkBlue,),
                                                )
                                            )
                                          ]
                                      )
                                  )

                                )

                            ),
                            Positioned(
                                top: 125,
                                left: 20,
                                right: 20,
                                child:Row(
                                  children: [
                                    Flexible(
                                        flex:7,
                                        child:Container(
                                            height: 70,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: white.withOpacity(0),
                                            ),
                                            child:Card(
                                              elevation: 6,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10)
                                                ),
                                                child:Align(
                                                alignment: Alignment.center,
                                                child:Padding(
                                                  padding: EdgeInsets.all(15),
                                                  child:DropdownButtonHideUnderline(
                                                  child:DropdownButton(
                                                    isExpanded: true,

                                                    // Initial Value
                                                    value: dropdownvalue,


                                                    // Down Arrow Icon
                                                    icon: const Icon(Icons.keyboard_arrow_down,color: darkBlue,size: 30,),

                                                    // Array list of items
                                                    items: items.map((String items) {
                                                      return DropdownMenuItem(
                                                        value: items,
                                                        child: /*Align(
                                                            alignment: Alignment.topLeft,
                                                            child:*/Text(items,style: TextStyle(
                                                                fontSize: 22,
                                                                fontFamily: 'Poppins',
                                                                fontWeight: FontWeight.w500,
                                                                color: darkBlue
                                                            ),
                                                            textAlign: TextAlign.start,),
                                                      );
                                                    }).toList(),
                                                    // After selecting the desired option,it will
                                                    // change button value to selected value
                                                    onChanged: (String? newValue) {
                                                      setState(() {
                                                        dropdownvalue = newValue!;
                                                      });
                                                    },
                                                  ),
                                                  )
                                                )
                                            )
                                            )

                                        )
                                    ),
                                    SizedBox(width: 20,),
                                    Expanded(
                                        flex:2,
                                        child:Container(
                                          height: 70,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: white.withOpacity(0),
                                          ),
                                          child:Card(
                                            elevation: 6,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10)
                                            ),
                                            color: white,
                                          )

                                        )
                                    ),
                                  ],
                                )
                            )
                          ]
                      )
                  ),
                ]
            )
        )
    )
    );

  }
}
