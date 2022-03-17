import 'dart:io';
import 'package:retrofit/screen/checkbox_state.dart';
import 'package:retrofit/utils/common.dart';
import 'package:retrofit/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class CoachEditProfileScreen extends StatefulWidget {
  @override
  _CoachEditProfileScreenState createState() => _CoachEditProfileScreenState();
}

class _CoachEditProfileScreenState extends State<CoachEditProfileScreen> {
  final activitiesChecked = [
    CheckBoxState(title: "Kickboxing"),
    CheckBoxState(title: "Bodybuilding"),
    CheckBoxState(title: "Karate"),
    CheckBoxState(title: "Endurance sports"),
    CheckBoxState(title: "Hiit"),
    CheckBoxState(title: "Body sculpting"),
    CheckBoxState(title: "Swimming"),
    CheckBoxState(title: "Yoga"),
    CheckBoxState(title: "Marathon running"),
  ];

  String? getName, getEmail, getLastName, _selectGender, _datePicker, getCoach;

  FocusNode email = FocusNode();
  FocusNode password = FocusNode();
  var formKey = GlobalKey<FormState>();
  var value = 0;
  var captureImage;
  bool val = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Edit Profile",
          style: TextStyle(
            color: Colors.grey.shade700,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        height: Common.displayHeight(context) * 1,
        width: Common.displayWidth(context) * 1,
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColor.deepGrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ///********* PROFILE PIC *********///
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 24.0),
                          child: InkWell(
                            onTap: () {
                              _selectImageGallery();
                            },
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: AppColor.deepWhite,
                              ),
                              height: Common.displayHeight(context) * 0.16,
                              width: Common.displayWidth(context) * 0.32,
                              child: captureImage == null
                                  ? Text("UPLOAD")
                                  : ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.file(
                                        File(captureImage.path),
                                        height: Common.displayHeight(context) *
                                            0.16,
                                        width:
                                            Common.displayWidth(context) * 0.32,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                            ),
                          ),
                        ),

                        ///********* NAME BOX *********///
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ///********** USER NAME ********///
                              Row(
                                children: [
                                  Text(
                                    "COACH CODE:",
                                    textScaleFactor: 1.3,
                                    style: GoogleFonts.varelaRound(
                                        color: AppColor.primaryColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    " IANAMIZUNSCHI4",
                                    textScaleFactor: 1.3,
                                    style: GoogleFonts.varelaRound(
                                        color: AppColor.primaryColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),

                              ///******** FIRST NAME *******///
                              Common.sizedBoxHeight(
                                  MediaQuery.of(context).size.height * 0.03),
                              Text(
                                "FIRST NAME",
                                textScaleFactor: 1.3,
                                style: GoogleFonts.alatsi(
                                  color: AppColor.deepWhite,
                                ),
                              ),
                              Common.sizedBoxHeight(
                                  MediaQuery.of(context).size.height * 0.01),
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColor.deepWhite,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0,
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      enabled: false,
                                      hintText: "PRAHLAD",
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                              Common.sizedBoxHeight(
                                  MediaQuery.of(context).size.height * 0.02),

                              ///******** LAST NAME *******///
                              Text(
                                "LAST NAME",
                                textScaleFactor: 1.3,
                                style: GoogleFonts.alatsi(
                                  color: AppColor.deepWhite,
                                ),
                              ),
                              Common.sizedBoxHeight(
                                  MediaQuery.of(context).size.height * 0.01),
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColor.deepWhite,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0,
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "SINGH",
                                      enabled: false,
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                              Common.sizedBoxHeight(
                                  MediaQuery.of(context).size.height * 0.01),

                              ///******** EMAIL *******///
                              Text(
                                "EMAIL",
                                textScaleFactor: 1.3,
                                style: GoogleFonts.alatsi(
                                  color: AppColor.deepWhite,
                                ),
                              ),
                              Common.sizedBoxHeight(
                                  MediaQuery.of(context).size.height * 0.01),
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColor.deepWhite,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0,
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "iana@gmail.com".toUpperCase(),
                                      enabled: false,
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        ///******** GANDER & Date SELECT *******///
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ///******** Gender SELECT *******///
                              PopupMenuButton<String>(
                                onSelected: (String value) {
                                  setState(() {
                                    _selectGender = value;
                                  });
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: Common.displayHeight(context) * 0.06,
                                  width: Common.displayWidth(context) * 0.5,
                                  decoration: BoxDecoration(
                                    color: AppColor.deepWhite,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text(_selectGender == null
                                      ? 'SELECT GENDER'
                                      : _selectGender.toString()),
                                ),
                                itemBuilder: (BuildContext context) =>
                                    <PopupMenuEntry<String>>[
                                  const PopupMenuItem<String>(
                                    value: "MALE",
                                    child: Text("MALE"),
                                  ),
                                  const PopupMenuItem<String>(
                                    value: "FEMALE",
                                    child: Text("FEMALE"),
                                  ),
                                ],
                              ),

                              ///******** Date SELECT *******///
                              Container(
                                alignment: Alignment.center,
                                height: Common.displayHeight(context) * 0.06,
                                width: Common.displayWidth(context) * 0.35,
                                decoration: BoxDecoration(
                                  color: AppColor.deepWhite,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    _selectDate();
                                  },
                                  child: Text(_datePicker != null
                                      ? DateFormat.yMMMd()
                                          .format(DateTime.parse(_datePicker!))
                                      : "SELECT DOB"),
                                ),
                              ),
                            ],
                          ),
                        ),

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
                        Common.sizedBoxHeight(
                            MediaQuery.of(context).size.height * 0.04),

                        ///*** SPECIALTIES *****///
                        Text(
                          "SPECIALTIES",
                          style: TextStyle(
                            color: AppColor.deepWhite,
                          ),
                          textScaleFactor: 1.5,
                        ),
                        ...activitiesChecked.map(
                          (item) => CheckboxListTile(
                              checkColor: AppColor.primaryColor,
                              activeColor: AppColor.primaryColor,
                              controlAffinity: ListTileControlAffinity.leading,
                              value: item.val,
                              title: Text(
                                item.title,
                                style: TextStyle(
                                  color: AppColor.deepWhite,
                                ),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  item.val = value!;
                                });
                              }),
                        ),
                      ],
                    ),
                  ),

                  /// ****** SAVE BUTTON *******///
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: MaterialButton(
                      elevation: 0,
                      height: Common.displayHeight(context) * 0.05,
                      minWidth: Common.displayWidth(context) * 0.3,
                      shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          width: 0,
                        ),
                      ),
                      color: AppColor.deepGrey,
                      onPressed: () {
                        if (formKey.currentState != null) {
                          if (formKey.currentState!.validate()) {
                            return null;
                          } else {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        CoachEditProfileScreen()));
                          }
                        }
                      },
                      child: Text(
                        "SAVE",
                        style: TextStyle(
                          color: AppColor.deepWhite,
                          fontSize: Common.displayWidth(context) * 0.05,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _selectImageGallery() async {
    final image = await ImagePicker().getImage(source: ImageSource.gallery);
    setState(() {
      captureImage = image;
    });
  }

  _selectDate() async {
    final DateTime? datePicked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(3000));
    setState(() {
      _datePicker = DateFormat("yyy-mm-dd").format(datePicked!).toString();
    });
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
                color: AppColor.deepAmber,
              ),
              Icon(
                Icons.star,
                color: AppColor.deepAmber,
              ),
              Icon(
                Icons.star,
                color: AppColor.deepAmber,
              ),
              Icon(
                Icons.star,
                color: AppColor.deepAmber,
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
              color: AppColor.DarkPrimaryColor,
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Text(
              "UPLOAD",
              style: GoogleFonts.varelaRound(
                color: AppColor.deepAmber,
              ),
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
      child: Column(
        children: [
          Row(
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
                  color: AppColor.DarkPrimaryColor,
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: Text(
              "UPLOAD",
              style: GoogleFonts.varelaRound(
                color: AppColor.deepAmber,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
