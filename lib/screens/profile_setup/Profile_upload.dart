import 'package:flutter/material.dart';
import 'package:salahkar/screens/Mlogin_page.dart';

import '../../constants/constant_color.dart';


class ProfileUpload extends StatefulWidget {
  @override
  _ProfileUploadState createState() => _ProfileUploadState();
}

class _ProfileUploadState extends State<ProfileUpload> {
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
                  width: 60,
                  height: 60,
                  child:Center(child:Icon(Icons.person,color: white,)
                  ),
                  decoration: BoxDecoration(
                    borderRadius : BorderRadius.circular(30.0),
                    color : Color.fromRGBO(231, 231, 231, 1),
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
                      child:Text('Please upload your profile pic', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(7, 82, 100, 1),
                          fontFamily: 'Poppins',
                          fontSize: 26,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.bold,
                          height: 1.5909090909090908
                      ),))
              ),
              Container(
                child: Text('How would you like to put your first impression on others. Upload profile pic or choose from avatars.', textAlign: TextAlign.left, style: TextStyle(
                    color: Color.fromRGBO(145, 145, 145, 1),
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.7857142857142858
                ),),
              ),
              SizedBox(height: 30,),

              //SizedBox(height: 180,),
              Expanded(
                  child:Container(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child:InkWell(
                          onTap: (){
                            showModalBottomSheet<void>(
                                context: context,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20.0),
                                  ),
                                ),
                                isScrollControlled:true ,
                                builder: (context)=>
                                 SingleChildScrollView(
                                      child:Wrap(
                                        children: [

                                    Column(
                                      children: [
                                        Container(
                                          padding:EdgeInsets.fromLTRB(10, 10, 10, 0),
                                         child:Text('Upload Profile', textAlign: TextAlign.left, style: TextStyle(
                                            color: Color.fromRGBO(16, 23, 41, 1),
                                            fontFamily: 'Poppins',
                                            fontSize: 20,
                                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.w600,
                                            height: 1.5 /*PERCENT not supported*/
                                        ),)),
                                        Container(
                                          padding: EdgeInsets.all(25),
                                          child: Row(
                                            children: [
                                              Container(
                                                height:40,
                                                width: 40,
                                                child:Icon(Icons.photo,color: darkBlue,),
                                                decoration: BoxDecoration(
                                                  color: Color.fromRGBO(226, 242, 246, 1),
                                                  borderRadius: BorderRadius.circular(10)

                                                ),
                                              ),
                                              SizedBox(width: 10,),
                                              Expanded(
                                                  child:Text('Choose from document', textAlign: TextAlign.left, style: TextStyle(
                                                      color: Color.fromRGBO(7, 82, 100, 1),
                                                      fontFamily: 'Poppins',
                                                      fontSize: 16,
                                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight: FontWeight.w600,
                                                      height: 1.5 /*PERCENT not supported*/
                                                  ),) )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.fromLTRB(25,0 , 25, 25),
                                          child: Row(
                                            children: [
                                              Container(
                                                height:40,
                                                width: 40,
                                                child:Icon(Icons.camera_alt,color: darkBlue,),
                                                decoration: BoxDecoration(
                                                    color: Color.fromRGBO(226, 242, 246, 1),
                                                    borderRadius: BorderRadius.circular(10)

                                                ),
                                              ),
                                              SizedBox(width: 10,),
                                              Expanded(
                                                  child:Text('Take a photo', textAlign: TextAlign.left, style: TextStyle(
                                                      color: Color.fromRGBO(7, 82, 100, 1),
                                                      fontFamily: 'Poppins',
                                                      fontSize: 16,
                                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight: FontWeight.w600,
                                                      height: 1.5 /*PERCENT not supported*/
                                                  ),) )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ])));
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
                                    Text('Upload ',
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