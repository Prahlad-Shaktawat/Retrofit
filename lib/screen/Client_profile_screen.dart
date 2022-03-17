import 'package:retrofit/screen/recent_plans_screen.dart';
import 'package:retrofit/utils/common.dart';
import 'package:retrofit/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClientProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
      ),
      body: Container(
        height: Common.displayHeight(context) * 1,
        width: Common.displayWidth(context) * 1,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColor.primaryColor,
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ///********** EDIT PROFILE & CHANGE PASSWORD ********///
                    _userProfileAndPlan(context),

                    ///********** USER ID ********///
                    _userId(),

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
                    _userInterests(context),

                    ///********** USER HOURS OF WORKOUT PER WEEK ********///
                    _userWorkoutWeek(),

                    ///********** USER COMMENTS ********///
                    _userComments(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  ///********** EDIT PROFILE & CHANGE PASSWORD ********///
  _userProfileAndPlan(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          Common.sizedBoxHeight(MediaQuery.of(context).size.height * 0.04),
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1621400795361-82ba648a6e0f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"),
          ),

          /// ****** SUGGEST PLAN *******///
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RecentPlansScreen()));
              },
              disabledColor: AppColor.deepGrey,
              height: Common.displayHeight(context) * 0.06,
              minWidth: Common.displayWidth(context) * 0.4,
              shape: StadiumBorder(),
              color: AppColor.deepGrey,
              child: Text(
                "SUGGEST PLAN",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: AppColor.deepWhite,
                  fontSize: Common.displayWidth(context) * 0.04,
                ),
              ),
            ),
          ),

          /// ****** VIDEO *******///
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: MaterialButton(
              onPressed: () {},
              disabledColor: AppColor.deepGrey,
              height: Common.displayHeight(context) * 0.06,
              minWidth: Common.displayWidth(context) * 0.4,
              shape: StadiumBorder(),
              color: AppColor.deepGrey,
              child: Text(
                "VIDEO",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: AppColor.deepWhite,
                  fontSize: Common.displayWidth(context) * 0.04,
                ),
              ),
            ),
          ),

          /// ****** VIDEO CALL *******///
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: MaterialButton(
              onPressed: () {},
              disabledColor: AppColor.deepGrey,
              height: Common.displayHeight(context) * 0.06,
              minWidth: Common.displayWidth(context) * 0.4,
              shape: StadiumBorder(),
              color: AppColor.deepGrey,
              child: Text(
                "VIDEO CALL",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: AppColor.deepWhite,
                  fontSize: Common.displayWidth(context) * 0.04,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  ///********** USER ID ********///
  _userId() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 8.0),
      child: Row(
        children: [
          Text(
            "USER ID: ",
            style: GoogleFonts.varelaRound(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "SAMARTHSHARMA15",
            style: GoogleFonts.varelaRound(
              fontWeight: FontWeight.bold,
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
  _userInterests(BuildContext context) {
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
          Common.sizedBoxWidth(MediaQuery.of(context).size.width * 0.02),
          Container(
            alignment: Alignment.center,
            height: 30,
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              color: AppColor.deepGrey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "KICKBOXING",
              style: TextStyle(
                color: AppColor.deepWhite,
              ),
            ),
          ),
          Common.sizedBoxWidth(MediaQuery.of(context).size.width * 0.02),
        ],
      ),
    );
  }

  ///********** USER HOURS OF WORKOUT PER WEEK ********///
  _userWorkoutWeek() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "HOURS OF WORKOUT PER WEEK: " + "7",
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
        "COMMENTS: " + "THIS IS SIMPLE TEXT",
        textScaleFactor: 1.3,
        style: GoogleFonts.varelaRound(),
      ),
    );
  }
}
