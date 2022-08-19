import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:salahkar/constants/Text_styles.dart';
import 'package:salahkar/screens/intro_screen.dart';

import '../constants/constant_color.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}


class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 2;
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
      height: 8.0,
      width: isActive ? 10.0 : 10.0,
      decoration: BoxDecoration(
        color: isActive ?  Color.fromRGBO(7, 82, 100, 1) : Color.fromRGBO(196, 196, 196, 1),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Flexible(
                  flex: 7,
                 fit: FlexFit.tight,
                 child:Container(
                  height: 650.0,
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
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Flexible(
                              flex:3,
                            child:Center(
                              child:Container(
                                width: 310,
                                height:363,
                                decoration: BoxDecoration(
                                  image : DecorationImage(
                                      image: AssetImage('assets/onboarding1.png'),
                                      fit: BoxFit.fill
                                  ),
                                )
                              ),
                            ),
                            ),
                            SizedBox(height: 10.0),
                            Flexible(
                              flex:1,
                              child:Container(
                              //margin: EdgeInsets.fromLTRB(20.0,0,20.0,0,),
                              child:Text(
                                'Connect with Teachers and learn about Finance.',
                                style: Heading1,
                              ),
                            ),
                            ),
                            SizedBox(height: 15.0),
                            Flexible(
                              flex: 2,
                              // margin: EdgeInsets.fromLTRB(20.0,0,20.0,0,),
                              child: Text(
                                'Connect with top mentors around the world and start your financial journey and achieve financial freedom..',
                                style: NormalText1,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Flexible(
                              flex:3,
                              child:Center(
                                child:Container(
                                    width: 310,
                                    height:363,
                                    decoration: BoxDecoration(
                                      image : DecorationImage(
                                          image: AssetImage('assets/onboarding2.png'),
                                          fit: BoxFit.fill
                                      ),
                                    )
                                ),
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Flexible(
                              flex:1,
                              child:Container(
                                //margin: EdgeInsets.fromLTRB(20.0,0,20.0,0,),
                                child:Text(
                                  'Connect with Teachers and learn about Finance.',
                                  style: Heading1,
                                ),
                              ),
                            ),
                            SizedBox(height: 15.0),
                            Flexible(
                              flex: 2,
                              // margin: EdgeInsets.fromLTRB(20.0,0,20.0,0,),
                              child: Text(
                                'Connect with top mentors around the world and start your financial journey and achieve financial freedom..',
                                style: NormalText1,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
                _currentPage != _numPages-1
                    ? Expanded(
                     flex:1,

                        child:Padding(
                          padding: EdgeInsets.all(10),
                          child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Flexible(
                            flex:1,
                            child:TextButton(
                              onPressed:(){},
                              child:Text("Skip",
                                style: TextStyle(
                                  color: Color(0xff075264),
                                  fontSize: 16,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                              flex:1,
                              child:SizedBox(
                                  width: 95,
                                  height: 43,
                                  child:ElevatedButton(
                                    onPressed: (){
                                      _pageController.nextPage(
                                        duration: Duration(milliseconds: 500),
                                        curve: Curves.ease,
                                      );
                                    },
                                    child: Text('Next',style: TextStyle(
                                      color: white,
                                      fontSize: 16,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                    ),),
                                    style: ElevatedButton.styleFrom(
                                      primary: darkBlue,
                                      shape: new RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      ),

                                    ),
                                  )
                              )
                          )
                        ],
                      ),
                        ),
                )
                    :Expanded(
                     child: Center(
                         child:SizedBox(
                             width: 95,
                             height: 43,
                             child:ElevatedButton(
                               onPressed: (){
                                 Navigator.push(context, MaterialPageRoute(builder: (_)=>IntroScreen(),));
                               },
                               child: Text('Start',style: TextStyle(
                                 color: white,
                                 fontSize: 16,
                                 fontFamily: "Poppins",
                                 fontWeight: FontWeight.w500,
                               ),),
                               style: ElevatedButton.styleFrom(
                                 primary: darkBlue,
                                 shape: new RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(50),
                                 ),

                               ),
                             )
                         )
                     )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}



