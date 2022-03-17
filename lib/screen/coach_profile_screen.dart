import 'package:retrofit/screen/coach_edit_profile_screen.dart';
import 'package:retrofit/utils/common.dart';
import 'package:retrofit/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'coach_change_password_screen.dart';

class CoachProfileScreen extends StatelessWidget {
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
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColor.deepGrey,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///********** EDIT PROFILE & CHANGE PASSWORD ********///
                  _editProfileChangePassword(context),

                  ///********** Coach ID ********///
                  _coachId(),

                  ///********** Coach NAME ********///
                  // Common.sizedBoxHeight(
                  //     MediaQuery.of(context).size.height * 0.04),
                  _coachName(),

                  ///********** Coach EMAIL ********///
                  _coachEmail(),

                  ///********** Coach GENDER ********///
                  _coachGender(),

                  ///********** Coach DOB ********///
                  _coachDob(),

                  ///********** Coach SPECIALISATIONS ********///
                  _coachSpecialisations(context),

                  ///********** COACH EXPERIENCE ********///
                  _coachExperience(),

                  ///********** DATE OF JOINING: ********///
                  _dateOfJoining(),

                  ///********** NO. OF SUBSCRIBERS ********///
                  _numberOfSubscribers(),

                  ///********** PUBLIC RATING ********///
                  _publicRating(context),

                  ///********** COACH CERTIFICATIONS ********///
                  _coachCertifications(),

                  ///********** COACH RESUME ********///
                  _coachResume(),
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1621400795361-82ba648a6e0f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"),
            ),

            ///********** USER EDIT PROFILE ********///
            Common.sizedBoxHeight(MediaQuery.of(context).size.height * 0.02),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CoachEditProfileScreen()));
              },
              child: Text(
                "EDIT PROFILE",
                textScaleFactor: 1.5,
                style: GoogleFonts.yeonSung(
                  color: Colors.grey,
                ),
              ),
            ),

            ///********** USER CHANGE PASSWORD ********///
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CoachChangePasswordScreen()));
              },
              child: Text(
                "CHANGE PASSWORD",
                style: GoogleFonts.yeonSung(
                  color: Colors.grey,
                ),
                textScaleFactor: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }

  ///********** Coach ID ********///
  _coachId() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 16.0,
      ),
      child: Text(
        "IANAMIZUNSCHI4",
        textScaleFactor: 2,
        style: GoogleFonts.varelaRound(
          fontWeight: FontWeight.bold,
          color: AppColor.primaryColor,
        ),
      ),
    );
  }

  ///********** Coach NAME ********///
  _coachName() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            "NAME:",
            style: GoogleFonts.varelaRound(
              color: AppColor.deepWhite,
            ),
          ),
          Text(
            " IANA MIZUNSCHI",
            style: GoogleFonts.varelaRound(
              color: AppColor.deepWhite,
            ),
          ),
        ],
      ),
    );
  }

  ///********** Coach EMAIL ********///
  _coachEmail() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            "EMAIL:",
            style: GoogleFonts.varelaRound(
              color: AppColor.deepWhite,
            ),
          ),
          Text(
            " IANA@GMAIL.COM",
            style: GoogleFonts.varelaRound(
              color: AppColor.deepWhite,
            ),
          ),
        ],
      ),
    );
  }

  ///********** Coach GENDER ********///
  _coachGender() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            "GENDER:",
            style: GoogleFonts.varelaRound(
              color: AppColor.deepWhite,
            ),
          ),
          Text(
            " FEMALE",
            style: GoogleFonts.varelaRound(
              color: AppColor.deepWhite,
            ),
          ),
        ],
      ),
    );
  }

  ///********** Coach DOB ********///
  _coachDob() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            "DOB:",
            style: GoogleFonts.varelaRound(
              color: AppColor.deepWhite,
            ),
          ),
          Text(
            " 1992-01-01",
            style: GoogleFonts.varelaRound(
              color: AppColor.deepWhite,
            ),
          ),
        ],
      ),
    );
  }

  ///********** Coach SPECIALISATIONS ********///
  _coachSpecialisations(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            "SPECIALISATIONS:",
            style: GoogleFonts.varelaRound(
              color: AppColor.deepWhite,
            ),
          ),
          Common.sizedBoxWidth(MediaQuery.of(context).size.width * 0.01),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColor.deepAmber,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "SWIMMING",
                style: GoogleFonts.varelaRound(
                  color: AppColor.deepWhite,
                ),
              ),
            ),
          ),
          Common.sizedBoxWidth(MediaQuery.of(context).size.width * 0.01),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColor.deepAmber,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "YOGO",
                style: GoogleFonts.varelaRound(
                  color: AppColor.deepWhite,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  ///********** COACH EXPERIENCE ********///
  _coachExperience() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            "EXPERIENCE:",
            style: GoogleFonts.varelaRound(
              color: AppColor.deepWhite,
            ),
          ),
          Text(
            " 7 YEARS",
            style: GoogleFonts.varelaRound(
              color: AppColor.deepWhite,
            ),
          ),
        ],
      ),
    );
  }

  ///********** DATE OF JOINING ********///
  _dateOfJoining() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            "DATE OF JOINING:",
            style: GoogleFonts.varelaRound(
              color: AppColor.deepWhite,
            ),
          ),
          Text(
            " MAY 13, 2021",
            style: GoogleFonts.varelaRound(
              color: AppColor.deepWhite,
            ),
          ),
        ],
      ),
    );
  }

  ///********** NO. OF SUBSCRIBERS ********///
  _numberOfSubscribers() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            "NO. OF SUBSCRIBERS:",
            style: GoogleFonts.varelaRound(
              color: AppColor.deepWhite,
            ),
          ),
          Text(
            " 10",
            style: GoogleFonts.varelaRound(
              color: AppColor.deepWhite,
            ),
          ),
        ],
      ),
    );
  }

  ///********** PUBLIC RATING ********///
  _publicRating(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            "PUBLIC RATING:",
            style: GoogleFonts.varelaRound(
              color: AppColor.deepWhite,
            ),
          ),
          Common.sizedBoxWidth(MediaQuery.of(context).size.width * 0.02),
          Row(
            children: [
              Icon(
                Icons.star,
                color: AppColor.deepAmber,
              ),
              Icon(
                Icons.star,
              ),
              Icon(
                Icons.star,
              ),
              Icon(
                Icons.star,
              ),
              Icon(
                Icons.star,
              ),
            ],
          ),
        ],
      ),
    );
  }

  ///********** COACH CERTIFICATIONS ********///
  _coachCertifications() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "CERTIFICATIONS:",
            style: GoogleFonts.varelaRound(
              color: AppColor.deepWhite,
            ),
          ),
          Text(
            "IANAMIZUNSCHI4_CERTIFICATE.PDF",
            style: GoogleFonts.varelaRound(
              color: AppColor.deepAmber,
            ),
          ),
        ],
      ),
    );
  }

  ///********** COACH RESUME ********///
  _coachResume() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "RESUME:",
            style: GoogleFonts.varelaRound(
              color: AppColor.deepWhite,
            ),
          ),
          Text(
            " IANAMIZUNSCHI4_RESUME.PDF",
            style: GoogleFonts.varelaRound(
              color: AppColor.deepAmber,
            ),
          ),
        ],
      ),
    );
  }
}
