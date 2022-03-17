import 'package:retrofit/screen/coach_details_screen.dart';
import 'package:retrofit/screen/custom_app_bar.dart';
import 'package:retrofit/screen/privacy_screen.dart';
import 'package:retrofit/screen/terms_condition_screen.dart';
import 'package:retrofit/utils/common.dart';
import 'package:retrofit/utils/constant.dart';
import 'package:retrofit/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'menu_drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

var appBar = CustomAppBar(
    isTitle: "Home",
    isMenu: true,
    isClientDrawer: false,
    isCoachDrawer: false,
    isBack: false);

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      drawer: MenuDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Column(
            children: [
              Container(
                color: AppColor.deepAmber,
                height: Common.displayHeight(context) * 0.25,
                width: Common.displayWidth(context) * 1,
              ),
              SizedBox(height: 20),

              ///***** title *******///
              Text(
                '''" Working out makes you fit, right technique makes you a winner "''',
                textAlign: TextAlign.center,
                style: GoogleFonts.andika(
                  fontSize: 28,
                  color: AppColor.DarkPrimaryColor,
                ),
              ),

              ///********* ABOUT US ********///
              SizedBox(height: 20),
              Container(
                color: AppColor.primaryColor,
                child: Column(
                  children: [
                    Image.network(
                      "https://images.unsplash.com/photo-1526409499567-9f0af1fcb6d1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80",
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24.0),
                      child: Text(
                        "ABOUT US",
                        style: GoogleFonts.zcoolXiaoWei(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    /// ******** LEARN THE TECHNIQUES OF PROS ***********///
                    Text(
                      "LEARN THE TECHNIQUES OF PROS",
                      style: TextStyle(
                        color: AppColor.deepBlack,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),

                    /// ******* about us details *******///
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(Constant.aboutDetail),
                    ),
                    SizedBox(height: 40),
                    Image.network(
                      "https://images.unsplash.com/photo-1589828695526-c461b4ddc158?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80",
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
                child: Text(
                  '''" A coach will help you get more out of your workout "''',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.andika(
                    color: AppColor.indigo,
                    fontSize: 20,
                  ),
                ),
              ),

              ///********* SIGN UP *********///
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                ),
                child: Container(
                  width: Common.displayWidth(context) * 1,
                  padding:
                      EdgeInsets.symmetric(horizontal: 8.0, vertical: 32.0),
                  color: AppColor.deepGrey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "SIGN UP",
                        style: GoogleFonts.andika(
                          fontSize: 40,
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Register with Gmail or create a new username",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.andika(
                          fontSize: 20,
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              ///********* SUBMIT FORM ********///
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                ),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 8.0, vertical: 32.0),
                  width: Common.displayWidth(context) * 1,
                  color: AppColor.lightGrey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "SUBMIT FORM ",
                        style: GoogleFonts.andika(
                          fontSize: 40,
                          color: AppColor.deepGrey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Fill in details regarding your fitness goals, your choice of coach and other health related info",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: AppColor.deepBlack,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              ///********* UPLOAD **********///
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 8.0, vertical: 32.0),
                  width: Common.displayWidth(context) * 1,
                  color: AppColor.primaryColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "UPLOAD",
                        style: GoogleFonts.andika(
                          fontSize: 40,
                          color: AppColor.deepGrey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "We will send you the first free video upload link via email",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: AppColor.deepBlack,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
                child: Text(
                  '''" The difference between good and great is technique "''',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.andika(
                    fontSize: 24,
                    color: AppColor.DarkPrimaryColor,
                  ),
                ),
              ),

              ///********* Meet The Team *********///

              Container(
                width: Common.displayWidth(context) * 1,
                color: AppColor.deepGrey,
                padding: EdgeInsets.symmetric(vertical: 24.0),
                child: Column(
                  children: [
                    Text(
                      "MEET THE TEAM",
                      style: GoogleFonts.padauk(
                        fontSize: 35,
                        color: AppColor.DarkPrimaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: List.generate(coachNameList.length, (index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 24.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 90,
                                backgroundImage:
                                    NetworkImage(coachNameList[index]["image"]),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => CoachDetailScreen(),
                                    ),
                                  );
                                },
                                child: Text(
                                  coachNameList[index]["name"],
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.andika(
                                    fontSize: 25,
                                    color: AppColor.DarkPrimaryColor,
                                  ),
                                ),
                              ),
                              Text(
                                coachNameList[index]["certified"],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColor.deepWhite,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                coachNameList[index]["title"],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColor.deepWhite,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                coachNameList[index]["bio"],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColor.deepWhite,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                coachNameList[index]["experience"],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColor.deepWhite,
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    )
                  ],
                ),
              ),

              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
                child: Text(
                  '''" A guided approach can help you tap into your hidden potential "''',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),

              ///************** PLANS **************///
              _plans(),

              ///******** UPGRADE PLAN **********///
              Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    '''" Upgrade your workout to the pro version "''',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      color: AppColor.DarkPrimaryColor,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {},
                          child: SvgPicture.asset(
                            "asset/facebook-logo.svg",
                            height: Common.displayHeight(context) * 0.07,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {},
                          child: SvgPicture.asset(
                            "asset/instagram-logo.svg",
                            height: Common.displayHeight(context) * 0.07,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),

              ///********** FOR ANY QUERIES **********///
              Column(
                children: [
                  Text("For any queries, contact us at"),
                  SizedBox(height: 5),
                  InkWell(
                      onTap: () {},
                      child: Text(
                        "info@retrofithelps.com",
                        style: TextStyle(
                          color: AppColor.DarkPrimaryColor,
                        ),
                      )),
                  SizedBox(height: 20),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TermsConditionScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Terms & Conditions",
                      )),
                  SizedBox(height: 5),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PrivacyScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Privacy Policy",
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  ///************** PLANS **************///
  _plans() {
    return Container(
      color: AppColor.primaryColor,
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
            child: Column(
              children: [
                Text(
                  "PLANS",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.glegoo(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Pricing plans are dynamic and are sent along with the review of your first video from the coach Plans are personalized and take into consideration the following;",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Column(
            children: [
              Card(
                color: Colors.white,
                elevation: 5,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade300,
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: Offset(0, 1),
                              )
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: SvgPicture.asset(
                            "asset/duration.svg",
                            height: Common.displayHeight(context) * 0.13,
                            width: Common.displayWidth(context) * 0.3,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "COACH",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Each coach has a unique skill set, experience and achievements",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.amber.shade800,
                elevation: 5,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.amber.shade800,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.amber.shade900,
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: Offset(0, 1),
                              )
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: SvgPicture.asset(
                            "asset/ribbon.svg",
                            height: Common.displayHeight(context) * 0.13,
                            width: Common.displayWidth(context) * 0.3,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "DURATION OF SUBSCRIPTION",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Options of monthly, quarterly and yearly plans will be given to you. You can also choose plans depending upon the number of uploads you want.",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 5,
                color: Colors.indigo.shade800,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.indigo.shade800,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.indigo.shade900,
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: Offset(0, 1),
                              )
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: SvgPicture.asset(
                            "asset/trophy.svg",
                            height: Common.displayHeight(context) * 0.13,
                            width: Common.displayWidth(context) * 0.3,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "YOUR GOALS",
                        style: GoogleFonts.poppins(
                            fontSize: 24, color: AppColor.deepWhite),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Your personal goals will reveal the amount of time and effort that is required from you as well as the coach.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColor.deepWhite,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

List<dynamic> coachNameList = [
  {
    "image":
        "https://images.unsplash.com/photo-1621786574887-a268ccd4604c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
    "name": "dragoslav drago radic",
    "certified": "Former Professional Kickboxing fighter",
    "title": "European & Serbian Karate Champion",
    "bio": "UAE Police trainer",
    "experience": "Detail Oriented",
  },
  {
    "image":
        "https://images.unsplash.com/photo-1621786514880-6e8996eb7b22?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80",
    "name": "sari al sayegh",
    "certified": "IFPA/Reps Certified coach",
    "title": "Injury Rehabilitation",
    "bio": "Assessment through fitness tests and data",
    "experience": "10 year experience",
  },
  {
    "image":
        "https://images.unsplash.com/photo-1587614295506-f03c0e6f5b44?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2000&q=80",
    "name": "iana mizunschi",
    "certified": "Theta Healing & Reiki",
    "title": "Cosmic energy healing",
    "bio": "NLP & Chinese Metaphysics",
    "experience": "Numerological Psychoanalysis.",
  }
];
