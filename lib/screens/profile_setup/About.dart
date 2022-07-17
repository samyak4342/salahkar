import 'package:flutter/material.dart';
import 'package:salahkar/widgets/Button1.dart';

import '../../constants/constant_color.dart';
import 'Mprofile_setup.dart';

class About extends StatelessWidget {
  TextEditingController aboutController = TextEditingController();

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
                  child:Center(child:Text('📜', textAlign: TextAlign.center, style: TextStyle(
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
                      child:Text('How would you like to describe yourself ?', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(7, 82, 100, 1),
                          fontFamily: 'Poppins',
                          fontSize: 26,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.bold,
                          height: 1.5909090909090908
                      ),))
              ),
              Container(
                child: Text('Write a little bit about yourself, tell about your achievements, awards, experience etc.', textAlign: TextAlign.left, style: TextStyle(
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
                maxLines: 8,
                controller: aboutController,
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
                  hintText: 'Write something about yourself',
                ),
              ),
              Expanded(
                  child:Container(
                      child:Align(
                        alignment: Alignment.bottomCenter,
                        child:Button1(
                          onTap: (){},
                          text: 'Next',
                        )
                      )
                  )
              )
            ]
        )
    );

  }
}