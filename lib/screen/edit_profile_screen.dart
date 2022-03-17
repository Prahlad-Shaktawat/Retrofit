import 'dart:io';

import 'package:retrofit/screen/checkbox_state.dart';
import 'package:retrofit/utils/common.dart';
import 'package:retrofit/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
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

  String? getName,
      getEmail,
      getLastName,
      _selectGender,
      _datePicker,
      getCoach,
      _selectSeriousInjuries,
      _selectHealthIssues;

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
                    color: AppColor.primaryColor,
                    child: Column(
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
                              Text(
                                "NAME: " + "PRAHLADSINGH24",
                                textScaleFactor: 1.3,
                                style: GoogleFonts.varelaRound(
                                    fontWeight: FontWeight.bold),
                              ),

                              ///******** FIRST NAME *******///
                              Common.sizedBoxHeight(
                                  MediaQuery.of(context).size.height * 0.03),
                              Text(
                                "FIRST NAME",
                                textScaleFactor: 1.3,
                                style: GoogleFonts.alatsi(),
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
                                style: GoogleFonts.alatsi(),
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
                                style: GoogleFonts.alatsi(),
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
                                      hintText:
                                          "prahlad8@yopmail.com".toUpperCase(),
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

                        ///***** Do your have any chronic health issues? *****///
                        Column(
                          children: [
                            ///***** Do your have any chronic health issues? *****///
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              child: Text(
                                "Do your have any chronic health issues?",
                                textScaleFactor: 1.5,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Theme(
                                      data: ThemeData(
                                        unselectedWidgetColor:
                                            AppColor.deepWhite,
                                      ),
                                      child: Radio<String>(
                                        activeColor: AppColor.deepBlack,
                                        focusColor: AppColor.deepWhite,
                                        hoverColor: AppColor.deepWhite,
                                        value: 'YES',
                                        groupValue: _selectHealthIssues,
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            _selectHealthIssues = newValue!;
                                          });
                                        },
                                      ),
                                    ),
                                    Text(
                                      'YES',
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Theme(
                                      data: ThemeData(
                                        unselectedWidgetColor:
                                            AppColor.deepWhite,
                                      ),
                                      child: Radio<String>(
                                        activeColor: AppColor.deepBlack,
                                        focusColor: AppColor.deepWhite,
                                        hoverColor: AppColor.deepWhite,
                                        value: 'NO',
                                        groupValue: _selectHealthIssues,
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            _selectHealthIssues = newValue!;
                                          });
                                        },
                                      ),
                                    ),
                                    Text(
                                      'NO',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              child: Text(
                                "If yes, please mention below",
                                textScaleFactor: 1.5,
                              ),
                            ),

                            ///*** mention below TextFiled *****///
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColor.deepWhite,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: TextFormField(
                                  maxLines: 5,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(10),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        ///***** Do your have any serious injuries? *****///
                        Column(
                          children: [
                            ///***** Do your have any serious injuries? *****///
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              child: Text(
                                "Do your have any serious injuries?",
                                textScaleFactor: 1.5,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Theme(
                                      data: ThemeData(
                                        unselectedWidgetColor:
                                            AppColor.deepWhite,
                                      ),
                                      child: Radio<String>(
                                        activeColor: AppColor.deepBlack,
                                        focusColor: AppColor.deepWhite,
                                        hoverColor: AppColor.deepWhite,
                                        value: 'YES',
                                        groupValue: _selectSeriousInjuries,
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            _selectSeriousInjuries = newValue!;
                                          });
                                        },
                                      ),
                                    ),
                                    Text(
                                      'YES',
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Theme(
                                      data: ThemeData(
                                        unselectedWidgetColor:
                                            AppColor.deepWhite,
                                      ),
                                      child: Radio<String>(
                                        activeColor: AppColor.deepBlack,
                                        focusColor: AppColor.deepWhite,
                                        hoverColor: AppColor.deepWhite,
                                        value: 'NO',
                                        groupValue: _selectSeriousInjuries,
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            _selectSeriousInjuries = newValue!;
                                          });
                                        },
                                      ),
                                    ),
                                    Text(
                                      'NO',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              child: Text(
                                "If yes, please mention below",
                                textScaleFactor: 1.5,
                              ),
                            ),

                            ///*** mention below TextFiled *****///
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColor.deepWhite,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: TextFormField(
                                  maxLines: 5,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(10),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        ///*** Health Goals *****///
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              ///***** HEALTH GOALS TITLE *****///
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                  "HEALTH GOALS",
                                  textScaleFactor: 1.5,
                                  textAlign: TextAlign.center,
                                ),
                              ),

                              ///***** HEALTH GOALS TEXTFIELD *****///
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColor.deepWhite,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: TextFormField(
                                  maxLines: 5,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(10),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        ///********** Please mention below if you would like to share anything else with the coach ********///
                        Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              child: Text(
                                "Please mention below if you would like to share anything else with the coach",
                                textAlign: TextAlign.center,
                                textScaleFactor: 1.5,
                              ),
                            ),

                            ///*** share anything else TextFiled *****///
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColor.deepWhite,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: TextFormField(
                                  maxLines: 5,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(10),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        ///*** Select the activities *****///
                        Padding(
                          padding: const EdgeInsets.only(top: 24.0),
                          child: Text(
                            "Select the activities you are interested in:",
                            textScaleFactor: 1.5,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        ...activitiesChecked.map(
                          (item) => CheckboxListTile(
                              checkColor: AppColor.deepRed,
                              activeColor: AppColor.deepRed,
                              controlAffinity: ListTileControlAffinity.leading,
                              value: item.val,
                              title: Text(item.title),
                              onChanged: (value) {
                                setState(() {
                                  item.val = value!;
                                });
                              }),
                        ),

                        ///********** COACH CARD ********///
                        Common.sizedBoxHeight(
                            MediaQuery.of(context).size.height * 0.02),
                        _coachCard(context),
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
                        if (formKey.currentState!.validate()) {
                          return null;
                        } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EditProfileScreen()));
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
