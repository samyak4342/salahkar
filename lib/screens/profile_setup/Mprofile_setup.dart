import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:salahkar/constants/Text_styles.dart';
import 'package:salahkar/screens/profile_setup/About.dart';
import 'package:salahkar/screens/profile_setup/Address.dart';
import 'package:salahkar/screens/profile_setup/AdharUpload.dart';
import 'package:salahkar/screens/profile_setup/Meet_charges.dart';
import 'package:salahkar/screens/profile_setup/Profile_upload.dart';
import 'package:salahkar/screens/profile_setup/phone_no.dart';

import '../../constants/constant_color.dart';
import 'Info.dart';
import 'Username_page.dart';

class MprofileSetup extends StatefulWidget {
  @override
  _MprofileSetupState createState() => _MprofileSetupState();
}
GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
TextEditingController nameController = TextEditingController();

class _MprofileSetupState extends State<MprofileSetup> {
  var size ,height,width;

  final int _numPages = 8;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 5.0,
      width: isActive ? 28.0 : 28.0,
      decoration: BoxDecoration(
        color: isActive ? Color.fromRGBO(7, 82, 100, 1) : Color.fromRGBO(
            196, 196, 196, 1),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
  bool _validate = false;

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  void validation(){
    if (nameController.text.isEmpty) {
      Fluttertoast.showToast(
          msg: "This field cant be empty",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          //timeInSecForIosWeb: 1,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 16.0
      );
      return;
    }
    else{
      _pageController.nextPage(
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    }

  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
        resizeToAvoidBottomInset : false,
        backgroundColor: Colors.white,
        body: SafeArea(
        child:AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          height: height,
          child: Padding(
            padding: EdgeInsets.all(8.0),
           child:Column(
           children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _buildPageIndicator(),
          ),
              Expanded(
                flex: 2,
                  //height: 0.8*height,
                  child: PageView(
                      physics: ClampingScrollPhysics(),
                      controller: _pageController,
                      onPageChanged: (int page) {
                        setState(() {
                          _currentPage = page;
                        });
                      },
                      children: <Widget>[
                  Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_back_ios)),
                        ),
                        SizedBox(height: 20,),
                        Container(
                            width: 48,
                            height: 48,
                            child: Center(child: Text(
                              '💼', textAlign: TextAlign.center, style: TextStyle(
                              color: Color.fromRGBO(16, 23, 41, 1),
                              fontFamily: 'DM Sans',
                              fontSize: 20,),
                            ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Color.fromRGBO(255, 255, 255, 1),
                              border: Border.all(
                                color: Color.fromRGBO(164, 164, 164, 1),
                                width: 1,
                              ),
                            )
                        ),
                        SizedBox(height: 20.0,),
                        Container(
                            child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'What we call you ?', textAlign: TextAlign.left,
                                  style: Heading1,))
                        ),
                        Container(
                          child: Text(
                            'Let’s first setup your profile, so tell us how would you like us to call you?',
                            textAlign: TextAlign.left, style: NormalText1,),
                        ),
                        SizedBox(height: 30,),
                        TextField(
                          controller: nameController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: grey,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0)),
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
                            errorText: _validate ? 'Value Can\'t Be Empty' : null,

                          ),
                        ),
                        Expanded(
                            child: Container(
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: InkWell(
                                    onTap: () {
                                      validation();
                                      /*setState(() {
                                      }*/
                                        /*nameController.text.isEmpty ? _validate = true : _validate = false;
                                      });
                                      if(_validate==true){
                                        _pageController.nextPage(
                                          duration: Duration(milliseconds: 500),
                                          curve: Curves.ease,
                                        );
                                        Navigator.push(context, MaterialPageRoute(builder: (_)=>PhoneNo(),));
                                      }*/
                                    },
                                    child: Container(
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
                                              Text('Sign up ',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1),
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
              ),
                        ProfileUpload(),
                        PhoneNo(),
                        Info(),
                        AdharUpload(),
                        Address(),
                        About(),
                        MeetCharges(),
          ]
                  )
        )
    ]
           )

          ),
        )
        )
        )
        );
  }
}