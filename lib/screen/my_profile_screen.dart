import 'package:retrofit/screen/change_password_screen.dart';
import 'package:retrofit/screen/edit_profile_screen.dart';
import 'package:retrofit/utils/common.dart';
import 'package:retrofit/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
      ),
      body: Container(
        height: Common.displayHeight(context) * 1,
        width: Common.displayWidth(context) * 1,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColor.primaryColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///********** EDIT PROFILE & CHANGE PASSWORD ********///
                  _editProfileChangePassword(context),

                  ///********** USER NAME ********///
                  // Common.sizedBoxHeight(
                  //     MediaQuery.of(context).size.height * 0.04),
                  _userName(),

                  ///********** USER EMAIL ********///
                  _userEmail(),

                  ///********** USER GENDER ********///
                  _userGender(),

                  ///********** USER DOB ********///
                  _userDob(),

                  ///********** USER HEALTH ISSUES ********///
                  _userHealthIssues(),

                  ///********** USER INJURIES ********///
                  _userInjuries(),

                  ///********** USER INTERESTS ********///
                  _userInterests(),

                  ///********** USER HOURS OF WORKOUT PER WEEK ********///
                  _userWorkoutWeek(),

                  ///********** USER COMMENTS ********///
                  _userComments(),

                  ///********** COACH CARD ********///
                  _coachCard(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  ///********** EDIT PROFILE & CHANGE PASSWORD ********///
  _editProfileChangePassword(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          Icon(
            Icons.person_sharp,
            size: 100,
          ),

          ///********** USER EDIT PROFILE ********///
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EditProfileScreen()));
            },
            child: Text(
              "EDIT PROFILE",
              textScaleFactor: 1.5,
              style: GoogleFonts.yeonSung(),
            ),
          ),

          ///********** USER CHANGE PASSWORD ********///
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ChangePasswordScreen()));
            },
            child: Text(
              "CHANGE PASSWORD",
              style: GoogleFonts.yeonSung(),
              textScaleFactor: 1.5,
            ),
          ),

          ///********** USER ID ********///
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 24.0, horizontal: 8.0),
            child: Text(
              "USER ID:",
              textScaleFactor: 2,
              style: GoogleFonts.varelaRound(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  ///********** USER NAME ********///
  _userName() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "NAME: " + "PRAHLADSINGH24",
        textScaleFactor: 1.3,
        style: GoogleFonts.varelaRound(),
      ),
    );
  }

  ///********** USER EMAIL ********///
  _userEmail() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "EMAIL: " + "PRAHLAD8@YOPMAIL.COM",
        textScaleFactor: 1.3,
        style: GoogleFonts.varelaRound(),
      ),
    );
  }

  ///********** USER GENDER ********///
  _userGender() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "GENDER: " + "MALE",
        textScaleFactor: 1.3,
        style: GoogleFonts.varelaRound(),
      ),
    );
  }

  ///********** USER DOB ********///
  _userDob() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "DOB: " + "2000-10-24",
        textScaleFactor: 1.3,
        style: GoogleFonts.varelaRound(),
      ),
    );
  }

  ///********** USER HEALTH ISSUES ********///
  _userHealthIssues() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "CHRONIC HEALTH ISSUES: " + "NONE",
        textScaleFactor: 1.3,
        style: GoogleFonts.varelaRound(),
      ),
    );
  }

  ///********** USER INJURIES ********///
  _userInjuries() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "INJURIES: " + "NONE",
        textScaleFactor: 1.3,
        style: GoogleFonts.varelaRound(),
      ),
    );
  }

  ///********** USER INTERESTS ********///
  _userInterests() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            "INTERESTS: ",
            textScaleFactor: 1.3,
            style: GoogleFonts.varelaRound(),
          ),
          Container(
            alignment: Alignment.center,
            height: 30,
            width: 50,
            decoration: BoxDecoration(
              color: AppColor.deepGrey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "Yoga",
              style: TextStyle(
                color: AppColor.deepWhite,
              ),
            ),
          ),
        ],
      ),
    );
  }

  ///********** USER HOURS OF WORKOUT PER WEEK ********///
  _userWorkoutWeek() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "HOURS OF WORKOUT PER WEEK: " + "3",
        textScaleFactor: 1.3,
        style: GoogleFonts.varelaRound(),
      ),
    );
  }

  ///********** USER COMMENTS ********///
  _userComments() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "COMMENTS: " + "NONE",
        textScaleFactor: 1.3,
        style: GoogleFonts.varelaRound(),
      ),
    );
  }

  ///********** COACH CARD ********///
  _coachCard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: Common.displayWidth(context) * 1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.deepGrey,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Coach",
                textScaleFactor: 2,
                style: GoogleFonts.actor(
                  color: AppColor.deepWhite,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            ///********* COACH DP
            Container(
              alignment: Alignment.center,
              height: Common.displayHeight(context) * 0.15,
              width: Common.displayWidth(context) * 0.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.deepBlack,
                      blurRadius: 5,
                      spreadRadius: 1,
                      offset: Offset(0, 1),
                    )
                  ]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdJO7QFLFYGQbuyIg9hbaVfsM9hJoNrxV8y64Smyl558uNA3P5B9_276LCYGbuhOGtiHc&usqp=CAU",
                  height: Common.displayHeight(context) * 0.15,
                  width: Common.displayWidth(context) * 0.3,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            ///********* COACH NAME & DETAILS
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  /// COACH NAME
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "ZARA",
                      textScaleFactor: 2,
                      style: GoogleFonts.actor(
                        color: AppColor.deepWhite,
                      ),
                    ),
                  ),

                  ///COACH RATING

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      5,
                      (index) => Icon(
                        Icons.star,
                        color: AppColor.deepBlack,
                        size: 40,
                      ),
                    ),
                  ),

                  Common.sizedBoxHeight(
                      MediaQuery.of(context).size.height * 0.03),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "PLAN",
                          textScaleFactor: 2,
                          style: GoogleFonts.actor(
                            color: AppColor.deepWhite,
                          ),
                        ),
                        Text(
                          "FREE",
                          textScaleFactor: 2,
                          style: GoogleFonts.actor(
                            color: AppColor.deepWhite,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 24.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "NO. OF MONTHS",
                                style: GoogleFonts.actor(
                                  color: AppColor.deepWhite,
                                ),
                              ),
                              Text(
                                "0",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                  color: AppColor.deepWhite,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "VIDEO",
                                style: GoogleFonts.actor(
                                  color: AppColor.deepWhite,
                                ),
                              ),
                              Text(
                                "0/1",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                  color: AppColor.deepWhite,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "VIDEO CALL",
                                style: GoogleFonts.actor(
                                  color: AppColor.deepWhite,
                                ),
                              ),
                              Text(
                                "0/1",
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                  color: AppColor.deepWhite,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
