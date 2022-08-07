import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salahkar/Explore/Mentor_list.dart';
import 'package:salahkar/learner/Mentor_listtile.dart';
import 'package:salahkar/screens/Mlogin_page.dart';
import 'package:salahkar/screens/Search_page.dart';
import 'package:salahkar/screens/intro_screen.dart';
import 'package:google_fonts/google_fonts.dart';


import '../constants/constant_color.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

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
      height: 7.0,
      width: isActive ? 7.0 : 7.0,
      decoration: BoxDecoration(
        color: isActive ? Color.fromRGBO(7, 82, 100, 1) : Color.fromRGBO(
            196, 196, 196, 1),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        backgroundColor: Colors.white,
        body:SingleChildScrollView(
          child:Column(
        children:[
          Container(
            child: Stack(
              children: <Widget>[
                Positioned(
                  child: Container(
                    height: 290,
                    decoration: BoxDecoration(
                      color: white,
                    ),
                  ),
                ),
                Positioned(
                    child:Container(
                      height: 160,
                      decoration: BoxDecoration(
                        color: darkBlue
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(30, 25, 20, 70),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Hello,',textAlign: TextAlign.left, style: GoogleFonts.poppins(
                                  color: white,
                                  fontSize: 18,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),),
                              SizedBox(height: 15,),
                              Expanded(
                              child:Text('John Snow 👋',textAlign: TextAlign.left, style: GoogleFonts.poppins(
                                  color: white,
                                  fontSize: 22,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.bold,
                                  height: 1
                              ),),)
                            ],
                          ),
                          IconButton(onPressed: (){},
                              icon: Icon(Icons.notifications_rounded,size: 40,color: white,)),
                          IconButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>SearchPage(),));
                          },
                              icon: ImageIcon(AssetImage('assets/searchbar.png'),size: 40,color: white,)),
                        ],
                      ),
                      )
                    )
                ),
                Positioned(
                  top: 110,
                    left: 30,
                    right: 30,
                    child:Align(
                      alignment: Alignment.center,
                        child:Container(
                       height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            //border: Border.all(color: darkBlue),
                            color: white.withOpacity(0),
                          ),
                            child:Card(
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),

                              ),
                                child:Column(
                                children: [
                                  Expanded(
                                      flex: 2,
                                      //height: 0.8*height,
                                          /*child:Padding(
                                              padding: EdgeInsets.all(5),*/
                                              child:PageView(
                                                  physics: ClampingScrollPhysics(),
                                                  controller: _pageController,
                                                  onPageChanged: (int page) {
                                                    setState(() {
                                                      _currentPage = page;
                                                    });
                                                  },
                                                  children: <Widget>[

                                                    /*Container(
                                                      child:*/
                                                    Row(
                                                        children: [
                                                          Flexible(
                                                            flex:2,
                                                            child:Padding(
                                                                padding:EdgeInsets.fromLTRB(15, 15, 0, 0),
                                                                child:Column(
                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                  children: [
                                                                    Flexible(
                                                                      flex:2,
                                                                      child:Text('Find Salahkar’s', textAlign: TextAlign.left, style: GoogleFonts.poppins(
                                                                          color: Color.fromRGBO(16, 23, 41, 1),
                                                                          fontSize: 18,
                                                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                                          fontWeight: FontWeight.bold,
                                                                          height: 0.8 /*PERCENT not supported*/
                                                                      ),),),
                                                                    Flexible(
                                                                      flex: 7,
                                                                      child:Container(
                                                                          padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                                                          width: 200,
                                                                          child:Text('Find best Mentors of financial world around India and learn tricks of finance from them at a very low cost. ', textAlign: TextAlign.left, style: GoogleFonts.poppins(
                                                                              color: Color.fromRGBO(160, 160, 160, 1),
                                                                              fontSize: 12,
                                                                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                                              fontWeight: FontWeight.w500,
                                                                              height: 1.6 /*PERCENT not supported*/
                                                                          ),)
                                                                      ),),
                                                                  ],
                                                                )
                                                            ),
                                                          ),
                                                          Expanded(
                                                              flex:1,
                                                              child:Container(
                                                                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                                                child:Image.asset('assets/banner1.png'),
                                                              )
                                                          )
                                                        ],
                                                      ),
                                                      /*decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(10),
                                                            border: Border.all(color: Colors.white),
                                                            color: white,
                                                          ),
                                                        ),*/
                                                    /*Container(
                                                      child:*/
                                                    Row(
                                                      children: [
                                                        Flexible(
                                                          flex:2,
                                                          child:Padding(
                                                              padding:EdgeInsets.fromLTRB(15, 15, 0, 0),
                                                              child:Column(
                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                  Flexible(
                                                                    flex:2,
                                                                    child:Text('Become a Salahkar', textAlign: TextAlign.left, style: GoogleFonts.poppins(
                                                                        color: Color.fromRGBO(16, 23, 41, 1),
                                                                        fontSize: 18,
                                                                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                                        fontWeight: FontWeight.bold,
                                                                        height: 0.8 /*PERCENT not supported*/
                                                                    ),),),
                                                                  Flexible(
                                                                    flex: 7,
                                                                    child:Container(
                                                                        padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                                                        width: 200,
                                                                        child:Text('If you know the art of Financial world than Salahkar is the best platform for you, use your art and starig earning from it.', textAlign: TextAlign.left, style: GoogleFonts.poppins(
                                                                            color: Color.fromRGBO(160, 160, 160, 1),
                                                                            fontSize: 12,
                                                                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                                            fontWeight: FontWeight.w500,
                                                                            height: 1.6 /*PERCENT not supported*/
                                                                        ),)
                                                                    ),),
                                                                ],
                                                              )
                                                          ),
                                                        ),
                                                        Expanded(
                                                            flex:1,
                                                            child:Container(
                                                              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                                              child:Image.asset('assets/banner2.png'),
                                                            )
                                                        )
                                                      ],
                                                    ),
                                                    /*decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(10),
                                                            border: Border.all(color: Colors.white),
                                                            color: white,
                                                          ),
                                                        ),*/
                                                  ]
                                              )

                                  ),
                                  SizedBox(height: 10,),
                                ]
                            )
                            )
                          ),
                        ))
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _buildPageIndicator(),
          ),
          SizedBox(height: 10,),
          Container(
            child:Column(
              children: [
                Padding(
                  padding:EdgeInsets.fromLTRB(25, 0, 25, 0),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Explore ✈',textAlign: TextAlign.left, style: GoogleFonts.poppins(
                        color: Color.fromRGBO(16, 23, 41, 1),
                        fontSize: 22,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.w500,
                        height: 1
                    ),),
                    Expanded(
                      child:Align(
                        alignment: Alignment.topRight,
                          child:Text('Swipe',textAlign: TextAlign.left, style: GoogleFonts.poppins(
                        color: Color.fromRGBO(7, 82, 100, 1),
                        fontSize: 18,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.bold,
                        height: 1
                    ),)))
                  ],
                ),
                ),
                Container(
                  height: 250,

                  child:ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ExploreSection(
                        title: 'Mentors',
                        description: 'Find best Mentors for your financial problems.',
                        image: 'assets/exp1.png',
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>MentorListTile(),));
                        }
                    ),
                    ExploreSection(
                        title: 'Calculators',
                        description: 'All types of Financial Calculators to made your Finance easy.',
                        image: 'assets/exp2.png',
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>MentorList(),));
                        }
                    ),
                    ExploreSection(
                        title: 'Calculators',
                        description: 'All types of Financial Calculators to made your Finance easy.',
                        image: 'assets/exp3.png',
                        onTap: (){}
                    ),
                    ExploreSection(
                        title: 'Services',
                        description: 'Get all types of financial services from your salahkar.',
                        image: 'assets/exp4.png',
                        onTap: (){}
                    ),
                    ExploreSection(
                        title: 'Blogs',
                        description: 'Read blogs from Mentors and learn more.',
                        image: 'assets/exp5.png',
                        onTap: (){}
                    ),
                    ExploreSection(
                        title: 'Bookmarks',
                        description: 'Get all your Favorite Mentors and Blogs here.',
                        image: 'assets/exp6.png',
                        onTap: (){}
                    ),
                  ],
                )
                )

              ],
            )
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
            child:ListTile(
              title:Text('Top Mentors ', textAlign: TextAlign.left, style: GoogleFonts.poppins(
                  color: Color.fromRGBO(16, 23, 41, 1),
                  fontSize: 20,
                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.bold,
                  height: 1.5 /*PERCENT not supported*/
              ),),
              subtitle:Text('Recommded by Salahkar', textAlign: TextAlign.left, style: GoogleFonts.poppins(
                  color: Color.fromRGBO(16, 23, 41, 1),
                  fontSize: 13,
                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1.5 /*PERCENT not supported*/
              ),),
              trailing: Container(
                  width:33,
                  height: 33,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:darkBlue,
                  ),
                  child:Icon(Icons.arrow_forward_ios,color:white,size: 18,)
              ),
            ),
          ),
          Container(
            height: 500,
            child:MentorListTile(),
          ),

          Padding(
            padding:EdgeInsets.all(20),
            child:Container(
              height:250,
              width: double.infinity,
              decoration: BoxDecoration(
                color:Color.fromRGBO(226, 242, 246, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child:Row(
                children: [
                  Flexible(
                    flex:3,
                   child:Padding(
                    padding:EdgeInsets.all(20),
                    child:Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        flex:1,
                        child:Text('Refer and Earn', textAlign: TextAlign.left, style: GoogleFonts.poppins(
                          color: Color.fromRGBO(7, 82, 100, 1),
                          fontSize: 24,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.bold,
                          height: 1 /*PERCENT not supported*/
                      ),),),
                      Flexible(
                        flex: 2,
                        child:Container(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        width: 200,
                        child:Text('Refer about salahkar to your friends and family and earn Rs. 100 on every sign up from your given link. ', textAlign: TextAlign.left, style: GoogleFonts.poppins(
                          color: Color.fromRGBO(136, 136, 136, 1),
                          fontSize: 13,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.bold,
                          height: 1.75 /*PERCENT not supported*/
                      ),)
                      ),),
                      SizedBox(height: 10,),
                      Flexible(
                        flex: 1,
                          child:SizedBox(
                        width: 100,
                        height: 40,
                        child:ElevatedButton(
                          onPressed: (){},
                          style:  ElevatedButton.styleFrom(
                            primary: darkBlue,
                            elevation: 5
                          ),

                          child:Text('Invite',textAlign: TextAlign.left, style: TextStyle(
                            color: white,
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                             )
                      )
                      )
                      )
                      )
                    ],
                  )
                  ),
                  ),
                  Expanded(
                    flex:2,
                      child:Container(
                        padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
                        child:Image.asset('assets/RNE.png'),
                  )
                  )
                ],
              )
            )
          ),
    ]
          )
        )
      )
    );

  }
}
class ExploreSection extends StatelessWidget {
  ExploreSection({Key? key, required this.title, required this.description, required this.image ,required this.onTap,})
      : super(key: key);
  final String title;
  final String description;
  final String image;
  final GestureTapCallback onTap;
  Widget build(BuildContext context) {
    return
      InkWell(
        onTap: onTap,
        child:Container(
            padding: EdgeInsets.fromLTRB(15, 15, 7, 15),
            height:140,
            width: 210,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child:Card(
                elevation: 6,
                color: white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: darkBlue, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child:Column(
                  children: [
                    Flexible(
                      flex: 3,
                      child:Padding(
                      padding: EdgeInsets.all(15),
                      child:Container(
                          width: 48,
                          height: 48,
                          padding: EdgeInsets.all(3),
                          child:Image.asset(this.image),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            // border: Border.all(color: Color.fromRGBO(164, 164, 164, 1),width: 1)
                          )
                      ),),),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.loose,
                      child:Padding(
                      padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                      child:Align(
                        alignment: Alignment.topLeft,
                        child:Text(this.title, textAlign: TextAlign.left, style: GoogleFonts.poppins(
                            color: Color.fromRGBO(0, 78, 100, 1),
                            fontSize: 20,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.w600,
                            height: 1
                        ),),),)),
                    Flexible(
                      flex: 3,
                      child:Container(
                        padding: EdgeInsets.all(10),
                        child: Text(this.description, textAlign: TextAlign.left, style: GoogleFonts.poppins(
                            color: Color.fromRGBO(160, 160, 160, 1),
                            fontSize: 16,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.5 /*PERCENT not supported*/
                        ),)
                    ),
                    ),

                  ],
                )
            )
        ),);
  }
}