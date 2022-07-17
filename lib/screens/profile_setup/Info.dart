import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salahkar/widgets/Button1.dart';

import '../../constants/constant_color.dart';

class Info extends StatefulWidget {
  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    TextEditingController profession = TextEditingController();
    TextEditingController expertise = TextEditingController();
    TextEditingController experience = TextEditingController();
    TextEditingController nameController = TextEditingController();

    return ListView(
        scrollDirection:Axis.vertical ,
        children:<Widget>[
          Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child:IconButton(
                          onPressed: (){},
                          icon:Icon(Icons.arrow_back_ios)),
                    ),
                    SizedBox(height: 20,),
                    Container(
                        width: 48,
                        height: 48,
                        child:Center(child:Text('🖋', textAlign: TextAlign.center, style: TextStyle(
                          color: Color.fromRGBO(16, 23, 41, 1),
                          fontFamily: 'DM Sans',
                          fontSize: 20,),
                        ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius : BorderRadius.circular(10.0),
                          color : Color.fromRGBO(255, 255, 255, 1),
                          border : Border.all(
                            color: Color.fromRGBO(164, 164, 164, 1),
                            width: 1,
                          ),
                        )
                    ),
                    SizedBox(height: 20.0,),
                    Container(
                        child:Align(
                            alignment: Alignment.topLeft,
                            child:Text('Tell us a little bit about your profession.', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(7, 82, 100, 1),
                                fontFamily: 'Poppins',
                                fontSize: 26,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.bold,
                                height: 1.5909090909090908
                            ),))
                    ),
                    Container(
                      child: Text('Tell us about your profession and if you are a member of any institution please provide certificate, if not please continue.', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(145, 145, 145, 1),
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.7857142857142858
                      ),),
                    ),
                    SizedBox(height: 30,),
                    TextField(
                      controller: profession,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor:grey,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                                Radius.circular(15)
                            ),
                            borderSide: BorderSide(
                                color: darkBlue,
                                width: 3
                            )
                        ),
                        //labelText: 'Email Id',
                        hintText: 'Profession*',
                      ),
                    ),
                    SizedBox(height: 30,),
                    TextField(
                      controller: expertise,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor:grey,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                                Radius.circular(15)
                            ),
                            borderSide: BorderSide(
                                color: darkBlue,
                                width: 3
                            )
                        ),
                        //labelText: 'Email Id',
                        hintText: 'Expertise',
                      ),
                    ),
                    SizedBox(height: 30,),
                    TextField(
                      controller: experience,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor:grey,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                                Radius.circular(15)
                            ),
                            borderSide: BorderSide(
                                color: darkBlue,
                                width: 3
                            )
                        ),
                        //labelText: 'Email Id',
                        hintText: 'Year of Experience',
                      ),
                    ),
                    SizedBox(height: 30,),
                    TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor:grey,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                                Radius.circular(15)
                            ),
                            borderSide: BorderSide(
                                color: darkBlue,
                                width: 3
                            )
                        ),
                        //labelText: 'Email Id',
                        hintText: 'Enter your Username',
                      ),
                    ),
                    SizedBox(height: 40,),
                    Align(
                        alignment: Alignment.center,
                        child:Button1(
                          onTap:(){},
                          text:'Next',
                        )
                    )
                  ])
          )
        ]
    );
  }
}