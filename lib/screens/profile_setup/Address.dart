import 'package:flutter/material.dart';
import 'package:salahkar/widgets/Button1.dart';

import '../../constants/constant_color.dart';


class Address extends StatefulWidget {
  @override
  _AddressState createState() => _AddressState();
}

class _AddressState extends State<Address> {
  @override
  Widget build(BuildContext context) {

    return /*SingleChildScrollView(
        child:*/Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: ListView(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child:IconButton(
                    onPressed: (){},
                    icon:Icon(Icons.arrow_back_ios)),
              ),
              SizedBox(height: 20,),
              Container(
                alignment: Alignment.topLeft,
                  width: 48,
                  height: 48,
                  child:Center(child:Text('🏠', textAlign: TextAlign.center, style: TextStyle(
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
                      child:Text('Tell us a little bit about where you live.', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(7, 82, 100, 1),
                          fontFamily: 'Poppins',
                          fontSize: 26,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.bold,
                          height: 1.5909090909090908
                      ),))
              ),
              Container(
                child: Text('Tell us about yourr profession and if you are a member of any institution please provide certificate, if not please continue.', textAlign: TextAlign.left, style: TextStyle(
                    color: Color.fromRGBO(145, 145, 145, 1),
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.7857142857142858
                ),),
              ),
                SizedBox(height: 20,),
                /*Container(
                  width:double.infinity,
                height:250,

                child:ListView(
                  children: [*/
                    ListTile(
                      leading: Container(
                          width: 48,
                          height: 48,
                          child:Center(child:Text('🏠', textAlign: TextAlign.center, style: TextStyle(
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
                      title: Text('Home', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(7, 82, 100, 1),
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.bold,
                          height: 1
                      ),),
                      subtitle: Text('(Permanent Address)', textAlign: TextAlign.left, style: TextStyle(
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
                                            child:Column(
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
                                                      child:Center(child:Text('🏠', textAlign: TextAlign.center, style: TextStyle(
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
                                                      child: Text('Home', textAlign: TextAlign.left, style: TextStyle(
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
                                              TextFormField(
                                                //controller: phoneController,
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
                                                  hintText: 'House/Flat No.',
                                                ),),
                                              SizedBox(height: 15,),
                                              TextFormField(
                                                //controller: phoneController,
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
                                                  hintText: 'Building name',
                                                ),),
                                              SizedBox(height: 15,),
                                              TextFormField(
                                                maxLines: 4,
                                                //controller: phoneController,
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
                                                  hintText: 'Area.',
                                                ),),
                                              SizedBox(height: 15,),
                                              TextFormField(
                                                maxLines: 4,
                                                //controller: phoneController,
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
                                                  hintText: 'Street',
                                                ),),
                                              SizedBox(height: 15,),
                                              TextFormField(
                                                //controller: phoneController,
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
                                                  hintText: 'City',
                                                ),),
                                              SizedBox(height: 15,),
                                              TextFormField(
                                                //controller: phoneController,
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
                                                  hintText: 'District',
                                                ),),

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
                            child:Center(child:Text('🏢', textAlign: TextAlign.center, style: TextStyle(
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
                        title: Text('Office', textAlign: TextAlign.left, style: TextStyle(
                            color: Color.fromRGBO(7, 82, 100, 1),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.bold,
                            height: 1
                        ),),
                        subtitle: Text('(Work Address)', textAlign: TextAlign.left, style: TextStyle(
                            color: Color.fromRGBO(7, 82, 100, 1),
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.bold,
                            height: 1
                        ),),
                        trailing: IconButton(
                            onPressed: (){},
                            icon:Icon(Icons.add_circle,color: darkBlue,size: 30,)),
                    ),
                    ListTile(
                        leading: Container(
                            width: 48,
                            height: 48,
                            child:Center(child:Text('🏘', textAlign: TextAlign.center, style: TextStyle(
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
                        title: Text('Others', textAlign: TextAlign.left, style: TextStyle(
                            color: Color.fromRGBO(7, 82, 100, 1),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.bold,
                            height: 1
                        ),),
                        subtitle: Text('(Temporary Address)', textAlign: TextAlign.left, style: TextStyle(
                            color: Color.fromRGBO(7, 82, 100, 1),
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.bold,
                            height: 1
                        ),),
                        trailing: IconButton(
                            onPressed: (){},
                            icon:Icon(Icons.add_circle,color: darkBlue,size: 30,)),
                    ),
                  /*],
                ),*/

              SizedBox(height: 20,),
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
        //)
    );
  }
}