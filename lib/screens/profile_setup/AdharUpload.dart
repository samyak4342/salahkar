import 'package:flutter/material.dart';
import 'package:salahkar/widgets/Button1.dart';

import '../../constants/constant_color.dart';


class AdharUpload extends StatefulWidget {
  @override
  _AdharUploadState createState() => _AdharUploadState();
}

class _AdharUploadState extends State<AdharUpload> {
  @override
  Widget build(BuildContext context) {
    TextEditingController addharController = TextEditingController();

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
                  padding: EdgeInsets.all(3),
                  child:Image.asset('assets/adhar.png'),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color.fromRGBO(164, 164, 164, 1),width: 1)
                  )
              ),
              SizedBox(height: 20.0,),
              Container(
                  child:Align(
                      alignment: Alignment.topLeft,
                      child:Text('Please upload your Addhar card.', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(7, 82, 100, 1),
                          fontFamily: 'Poppins',
                          fontSize: 26,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.bold,
                          height: 1.5909090909090908
                      ),))
              ),
              Container(
                child: Text('If you are the citizen of India then please upload adhar card in form of image/document or enter addhar number manually it works as an identity proof.', textAlign: TextAlign.left, style: TextStyle(
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

                  SizedBox(width: 10,),
                  Expanded(
                      child:TextFormField(
                        controller: addharController,
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
                          hintText: 'Addhar Number',
                        ),) )
                ],
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