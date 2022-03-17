import 'package:retrofit/screen/checkbox_state.dart';
import 'package:retrofit/utils/common.dart';
import 'package:retrofit/utils/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class HealthScreen extends StatefulWidget {
  @override
  _HealthScreenState createState() => _HealthScreenState();
}

class _HealthScreenState extends State<HealthScreen> {
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

  late String getName,
      getLastName,
      _selectGender,
      _datePicker,
      getCoach,
      _selectCoach,
      _selectSeriousInjuries,
      _selectHours,
      _selectHealthIssues;

  FocusNode email = FocusNode();
  FocusNode password = FocusNode();
  var formKey = GlobalKey<FormState>();
  CoachList selectCoach = coachList[0];

  void _select(CoachList coachLists) {
    setState(() {
      selectCoach = coachLists;
    });
  }

  var value = 0;
  bool val = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "REGISTRATION",
          style: TextStyle(
            color: Colors.grey.shade100,
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
                        ///******* tell us a little about yourself ******///
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Tell us a little about yourself",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.chelaOne(
                                fontSize: Common.displayWidth(context) * 0.09),
                          ),
                        ),

                        ///********* NAME BOX *********///
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              ///******** FIRST NAME *******///
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
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                      hintText: "First Name",
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                              Common.sizedBoxHeight(
                                  MediaQuery.of(context).size.height * 0.02),

                              ///******** LAST NAME *******///
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
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                      hintText: "Last Name",
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
                                      ? 'Select Gander'
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
                                          .format(DateTime.parse(_datePicker))
                                      : "Select Date"),
                                ),
                              ),
                            ],
                          ),
                        ),

                        ///*** Select Coach *****///

                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 8.0),
                          child: PopupMenuButton<String>(
                            onSelected: (String value) {
                              setState(() {
                                _selectCoach = value;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: Common.displayHeight(context) * 0.06,
                              width: Common.displayWidth(context) * 1,
                              decoration: BoxDecoration(
                                color: AppColor.deepWhite,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text(_selectCoach == null
                                  ? 'Select Coach'
                                  : _selectCoach.toString()),
                            ),
                            itemBuilder: (BuildContext context) =>
                                <PopupMenuEntry<String>>[
                              const PopupMenuItem<String>(
                                value: "dragoslav drago radic",
                                child: Text("dragoslav drago radic"),
                              ),
                              const PopupMenuItem<String>(
                                value: "sari al sayegh",
                                child: Text("sari al sayegh"),
                              ),
                              const PopupMenuItem<String>(
                                value: "alisa damiani",
                                child: Text("alisa damiani"),
                              ),
                              const PopupMenuItem<String>(
                                value: "iana mizunschi",
                                child: Text("iana mizunschi"),
                              ),
                              const PopupMenuItem<String>(
                                value: "zara",
                                child: Text("zara"),
                              ),
                              const PopupMenuItem<String>(
                                value: "kiril vlad",
                                child: Text("kiril vlad"),
                              ),
                            ],
                          ),
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

                        ///***** How many hours do you workout in a week? *****///
                        Column(
                          children: [
                            ///***** How many hours do you workout in a week? *****///
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              child: Text(
                                "How many hours do you workout in a week?",
                                textScaleFactor: 1.5,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Column(
                              children: [
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
                                            value: '3 TO 6 HRS',
                                            groupValue: _selectHours,
                                            onChanged: (String? newValue) {
                                              setState(() {
                                                _selectHours = newValue!;
                                              });
                                            },
                                          ),
                                        ),
                                        Text(
                                          '3 TO 6 HRS',
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
                                            value: '7 TO 10 HRS',
                                            groupValue: _selectHours,
                                            onChanged: (String? newValue) {
                                              setState(() {
                                                _selectHours = newValue!;
                                              });
                                            },
                                          ),
                                        ),
                                        Text(
                                          '7 TO 10 HRS',
                                        ),
                                      ],
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
                                        value: 'MORE THAN 10 HOURS',
                                        groupValue: _selectHours,
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            _selectHours = newValue!;
                                          });
                                        },
                                      ),
                                    ),
                                    Text(
                                      'MORE THAN 10 HOURS',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),

                        ///********** What are your health goals? ********///
                        Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              child: Text(
                                "What are your health goals?",
                                textScaleFactor: 1.5,
                              ),
                            ),

                            ///*** Health Goals TextFiled *****///
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
                      ],
                    ),
                  ),

                  /// ****** SUBMIT BUTTON *******///
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
                                  builder: (context) => HealthScreen()));
                        }
                      },
                      child: Text(
                        "Submit",
                        style: TextStyle(
                          color: AppColor.deepWhite,
                          fontSize: Common.displayWidth(context) * 0.04,
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
}

List<CoachList> coachList = <CoachList>[
  CoachList(value: 1, name: "dragoslav drago radic"),
  CoachList(value: 2, name: "sari al sayegh"),
  CoachList(value: 3, name: "alisa damiani"),
  CoachList(value: 4, name: "iana mizunschi"),
  CoachList(value: 5, name: "zara"),
  CoachList(value: 6, name: "zakiril vladra"),
];

class CoachList {
  final int value;
  final String name;

  CoachList({required this.value, required this.name});
}
