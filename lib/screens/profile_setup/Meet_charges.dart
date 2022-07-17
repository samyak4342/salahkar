import 'package:flutter/material.dart';
import 'package:salahkar/screens/Homescreen.dart';
import 'package:salahkar/widgets/Button1.dart';

import '../../constants/constant_color.dart';


class MeetCharges extends StatefulWidget {
  @override
  _MeetChargesState createState() => _MeetChargesState();
}

class _MeetChargesState extends State<MeetCharges> {
  @override
  Widget build(BuildContext context) {

    return Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
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
                  child:Center(child:Text('💸', textAlign: TextAlign.center, style: TextStyle(
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
                      child:Text('One last thing, Setup your charges for Calls/Meets.', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(7, 82, 100, 1),
                          fontFamily: 'Poppins',
                          fontSize: 26,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.bold,
                          height: 1.5909090909090908
                      ),))
              ),
              Container(
                child: Text('Setup your pricing plan for the calls and meets and earn side income.', textAlign: TextAlign.left, style: TextStyle(
                    color: Color.fromRGBO(145, 145, 145, 1),
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.7857142857142858
                ),),
              ),
              SizedBox(height: 20,),
              Container(
                width:double.infinity,
                height:250,

                child:ListView(
                  children: [
                    ListTile(
                        leading: Container(
                            width: 48,
                            height: 48,
                            child:Center(child:Text('🎥', textAlign: TextAlign.center, style: TextStyle(
                              color: Color.fromRGBO(16, 23, 41, 1),
                              fontFamily: 'DM Sans',
                              fontSize: 20,),
                            ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius : BorderRadius.circular(10.0),
                              color : Color.fromRGBO(226, 242, 246, 1),

                            )
                        ),
                        title: Text('Video Meets', textAlign: TextAlign.left, style: TextStyle(
                            color: Color.fromRGBO(7, 82, 100, 1),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.bold,
                            height: 1
                        ),),
                        subtitle: Text('(Video calls with mentors)', textAlign: TextAlign.left, style: TextStyle(
                            color: Color.fromRGBO(7, 82, 100, 1),
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.bold,
                            height: 1
                        ),),
                        trailing: IconButton(
                            onPressed: (){
                              showModalBottomSheet<dynamic>(
                                  context: context,
                                  isScrollControlled: true,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(20.0),
                                    ),
                                  ),
                                  builder: (BuildContext context)
                                  {
                                    return SingleChildScrollView(
                                        padding: EdgeInsets.all(10.0),
                                        child:Wrap(
                                          //scrollDirection: Axis.vertical,
                                            children:[
                                              Container(
                                                padding:EdgeInsets.all(10),
                                                child:Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,

                                                  children: [
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        IconButton(
                                                            onPressed: (){},
                                                            icon:Icon(Icons.arrow_back_ios)),
                                                        Align(
                                                            alignment:Alignment.topRight,
                                                            child:ElevatedButton(
                                                                onPressed: (){},
                                                                style:  ElevatedButton.styleFrom(
                                                                  primary: darkBlue,
                                                                ),

                                                                child:Text('Save')
                                                            )
                                                        )
                                                      ],
                                                    ),
                                                    SizedBox(height: 25,),
                                                    Row(
                                                      children: [
                                                        Container(
                                                            width: 48,
                                                            height: 48,
                                                            child:Center(child:Text('🎥', textAlign: TextAlign.center, style: TextStyle(
                                                              color: Color.fromRGBO(16, 23, 41, 1),
                                                              fontFamily: 'DM Sans',
                                                              fontSize: 20,),
                                                            ),
                                                            ),
                                                            decoration: BoxDecoration(
                                                              borderRadius : BorderRadius.circular(10.0),
                                                              color : Color.fromRGBO(226, 242, 246, 1),

                                                            )
                                                        ),
                                                        SizedBox(width: 10,),
                                                        Expanded(
                                                          child: Text('Vedio Meets', textAlign: TextAlign.left, style: TextStyle(
                                                              color: Color.fromRGBO(7, 82, 100, 1),
                                                              fontFamily: 'Poppins',
                                                              fontSize: 18,
                                                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                              fontWeight: FontWeight.bold,
                                                              height: 1
                                                          ),),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(height: 25,),
                                                    Text('Set Charges :', textAlign: TextAlign.left, style: TextStyle(
                                                        color: Color.fromRGBO(16, 23, 41, 1),
                                                        fontFamily: 'Poppins',
                                                        fontSize: 16,
                                                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                        fontWeight: FontWeight.w600,
                                                        height: 1
                                                    ),),
                                                    SizedBox(height: 15,),
                                                    TextField(
                                                      maxLines: 4,
                                                      //controller: aboutController,
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
                                                        hintText: 'Enter Amount',
                                                      ),
                                                    ),
                                                    SizedBox(height: 15,),
                                                    Container(
                                                      child:Text('*Charges will be set on per min basis and user can set their charges in multiple of 5.'

                                                          , textAlign: TextAlign.left, style: TextStyle(
                                                            color: Color.fromRGBO(145, 145, 145, 1),
                                                        fontFamily: 'Poppins',
                                                        fontSize: 14,
                                                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                        fontWeight: FontWeight.w500,
                                                        height: 1
                                                    ),)),
                                                    SizedBox(height: 10,),
                                                    Container(
                                                        child:Text('Example : ₹ 5/min, ₹ 10/min, ₹ 20/min', textAlign: TextAlign.left, style: TextStyle(
                                                            color: Color.fromRGBO(145, 145, 145, 1),
                                                            fontFamily: 'Poppins',
                                                            fontSize: 14,
                                                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                            fontWeight: FontWeight.w500,
                                                            height: 1
                                                        ),)),
                                                    SizedBox(height: 30,),
                                                  ],
                                                ),
                                              )
                                            ]
                                        )
                                    );
                                  }
                              );
                            },
                            icon:Icon(Icons.add_circle,color: darkBlue,size: 30,)),
                    ),
                    ListTile(
                        leading: Container(
                            width: 48,
                            height: 48,
                            child:Center(child:Text('☎', textAlign: TextAlign.center, style: TextStyle(
                              color: Color.fromRGBO(16, 23, 41, 1),
                              fontFamily: 'DM Sans',
                              fontSize: 20,),
                            ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius : BorderRadius.circular(10.0),
                              color : Color.fromRGBO(226, 242, 246, 1),

                            )
                        ),
                        title: Text('Voice Meets', textAlign: TextAlign.left, style: TextStyle(
                            color: Color.fromRGBO(7, 82, 100, 1),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.bold,
                            height: 1
                        ),),
                        subtitle: Text('(Voice calls with mentors)', textAlign: TextAlign.left, style: TextStyle(
                            color: Color.fromRGBO(7, 82, 100, 1),
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.bold,
                            height: 1
                        ),),
                        trailing: IconButton(
                            onPressed: (){
                              showModalBottomSheet<dynamic>(
                                  context: context,
                                  isScrollControlled: true,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(20.0),
                                    ),
                                  ),
                                  builder: (BuildContext context)
                                  {
                                    return SingleChildScrollView(
                                        padding: EdgeInsets.all(10.0),
                                        child:Wrap(
                                          //scrollDirection: Axis.vertical,
                                            children:[
                                              Container(
                                                padding:EdgeInsets.all(10),
                                                child:Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,

                                                  children: [
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        IconButton(
                                                            onPressed: (){},
                                                            icon:Icon(Icons.arrow_back_ios,)),
                                                        Align(
                                                            alignment:Alignment.topRight,
                                                            child:ElevatedButton(
                                                                onPressed: (){},
                                                                style:  ElevatedButton.styleFrom(
                                                                  primary: darkBlue,
                                                                ),

                                                                child:Text('Save')
                                                            )
                                                        )
                                                      ],
                                                    ),
                                                    SizedBox(height: 25,),
                                                    Row(
                                                      children: [
                                                        Container(
                                                            width: 48,
                                                            height: 48,
                                                            child:Center(child:Text('☎', textAlign: TextAlign.center, style: TextStyle(
                                                              color: Color.fromRGBO(16, 23, 41, 1),
                                                              fontFamily: 'DM Sans',
                                                              fontSize: 20,),
                                                            ),
                                                            ),
                                                            decoration: BoxDecoration(
                                                              borderRadius : BorderRadius.circular(10.0),
                                                              color : Color.fromRGBO(226, 242, 246, 1),

                                                            )
                                                        ),
                                                        SizedBox(width: 10,),
                                                        Expanded(
                                                          child: Text('Voice Meets', textAlign: TextAlign.left, style: TextStyle(
                                                              color: Color.fromRGBO(7, 82, 100, 1),
                                                              fontFamily: 'Poppins',
                                                              fontSize: 18,
                                                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                              fontWeight: FontWeight.bold,
                                                              height: 1
                                                          ),),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(height: 25,),
                                                    Text('Set Charges :', textAlign: TextAlign.left, style: TextStyle(
                                                        color: Color.fromRGBO(16, 23, 41, 1),
                                                        fontFamily: 'Poppins',
                                                        fontSize: 16,
                                                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                        fontWeight: FontWeight.w600,
                                                        height: 1
                                                    ),),
                                                    SizedBox(height: 15,),
                                                    TextField(
                                                      maxLines: 4,
                                                      //controller: aboutController,
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
                                                        hintText: 'Enter Amount',
                                                      ),
                                                    ),
                                                    SizedBox(height: 15,),
                                                    Container(
                                                        child:Text('*Charges will be set on per min basis and user can set their charges in multiple of 5.'

                                                          , textAlign: TextAlign.left, style: TextStyle(
                                                              color: Color.fromRGBO(145, 145, 145, 1),
                                                              fontFamily: 'Poppins',
                                                              fontSize: 14,
                                                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                              fontWeight: FontWeight.w500,
                                                              height: 1
                                                          ),)),
                                                    SizedBox(height: 10,),
                                                    Container(
                                                        child:Text('Example : ₹ 5/min, ₹ 10/min, ₹ 20/min', textAlign: TextAlign.left, style: TextStyle(
                                                            color: Color.fromRGBO(145, 145, 145, 1),
                                                            fontFamily: 'Poppins',
                                                            fontSize: 14,
                                                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                            fontWeight: FontWeight.w500,
                                                            height: 1
                                                        ),)),
                                                    SizedBox(height: 30,),
                                                  ],
                                                ),
                                              )
                                            ]
                                        )
                                    );
                                  }
                              );
                            },
                            icon:Icon(Icons.add_circle,color: darkBlue,size: 30,)),
                    ),

                  ],
                ),
              ),
              Expanded(
                  child:Container(
                      child:Align(
                        alignment: Alignment.bottomCenter,
                        child:Button1(
                          onTap:(){},
                          text:'Next',
                        )
                      )
                  )
              )

            ]
        )
    );
  }
}