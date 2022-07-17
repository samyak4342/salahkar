import 'package:flutter/material.dart';
import 'package:salahkar/screens/Mlogin_page.dart';

import '../../constants/constant_color.dart';


class PhoneNo extends StatefulWidget {
  @override
  _PhoneNoState createState() => _PhoneNoState();
}

class _PhoneNoState extends State<PhoneNo> {
  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();

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
                  child:Center(child:Text('📱', textAlign: TextAlign.center, style: TextStyle(
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
                      child:Text('Help us in connecting with you.', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(7, 82, 100, 1),
                          fontFamily: 'Poppins',
                          fontSize: 26,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.bold,
                          height: 1.5909090909090908
                      ),))
              ),
              Container(
                child: Text('Tell us your phone number it really help us to connect with you.', textAlign: TextAlign.left, style: TextStyle(
                    color: Color.fromRGBO(145, 145, 145, 1),
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.7857142857142858
                ),),
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Container(
                    width: 58,
                    height: 57,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      //border: Border.all(color: darkBlue),
                      color: grey,
                    ),

                  ),
                  SizedBox(width: 10,),
                  Expanded(
                      child:TextFormField(
                        controller: phoneController,
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
                          hintText: 'Enter your Phone No.',
                        ),) )
                ],
              ),

              //SizedBox(height: 180,),
              Expanded(
                child:Container(
                  child: Align(
                   alignment: Alignment.bottomCenter,
                     child:InkWell(
                       onTap: (){
                         showModalBottomSheet<void>(
                             context: context,
                             builder: (BuildContext context)
                             {
                               return Container(
                                 height: 100,
                                 child:Column(
                                   children: [
                                     Text('Please enter OTP', textAlign: TextAlign.left, style: TextStyle(
                                         color: Color.fromRGBO(16, 23, 41, 1),
                                         fontFamily: 'Poppins',
                                         fontSize: 20,
                                         letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                         fontWeight: FontWeight.normal,
                                         height: 1.5 /*PERCENT not supported*/
                                     ),)
                                   ],
                                 ),
                               );
                             }
                         );
                       },
                       child:Container(
                         alignment: Alignment.center,
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
                            Text('Verify ',
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
                ),
              )
                )
              )
            ]
                )

        );

  }
}
