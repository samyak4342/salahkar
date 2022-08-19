import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../constants/constant_color.dart';
import 'Learner_phone.dart';
import 'Learner_profilepicture.dart';
import 'Learner_username.dart';

class LprofileSetup extends StatefulWidget {
  @override
  _LprofileSetupState createState() => _LprofileSetupState();
}
GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
TextEditingController nameController = TextEditingController();

class _LprofileSetupState extends State<LprofileSetup> {
  var size ,height,width;

  final int _numPages = 3;
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
                                      LUsername(pageController: _pageController,),
                                      LProfileUpload(),
                                      LPhoneNo(),
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