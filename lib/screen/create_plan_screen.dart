import 'package:retrofit/screen/health_screen.dart';
import 'package:retrofit/utils/common.dart';
import 'package:retrofit/utils/theme.dart';
import 'package:flutter/material.dart';

class CreatePlanScreen extends StatefulWidget {
  @override
  _CreatePlanScreenState createState() => _CreatePlanScreenState();
}

class _CreatePlanScreenState extends State<CreatePlanScreen> {
  late String getVideo,
      getPrice,
      getVideoCall,
      getValidity,
      getPlanName,
      _selectSeriousInjuries;
  FocusNode video = FocusNode();
  FocusNode price = FocusNode();
  FocusNode videoCall = FocusNode();
  FocusNode validity = FocusNode();
  FocusNode planName = FocusNode();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "CREATE PLAN",
          style: TextStyle(
            color: Colors.grey.shade700,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          height: Common.displayHeight(context) * 1,
          width: Common.displayWidth(context) * 1,
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.always,
              child: Column(
                children: [
                  ///******** Sign Up Form TextFiled ********///
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColor.deepGrey,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: AppColor.deepGrey,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          children: [
                            Text(
                              "CREATE PLAN",
                              style: TextStyle(
                                fontSize: Common.displayWidth(context) * 0.06,
                                fontWeight: FontWeight.w600,
                                color: AppColor.deepWhite,
                              ),
                            ),
                            Common.sizedBoxHeight(
                              MediaQuery.of(context).size.height * 0.02,
                            ),

                            /// ****** Video Text Filed *******///
                            _videoTextFiled(),

                            /// ****** Price Text Filed *******///
                            Common.sizedBoxHeight(
                                MediaQuery.of(context).size.height * 0.02),
                            _priceTextFiled(),

                            /// ****** Video Call Text Filed *******///
                            Common.sizedBoxHeight(
                                MediaQuery.of(context).size.height * 0.02),
                            _videoCallTextFiled(),

                            /// ****** ValidityText Filed *******///
                            Common.sizedBoxHeight(
                                MediaQuery.of(context).size.height * 0.02),
                            _validityTextFiled(),

                            /// ****** Plan Name Text Filed *******///
                            Common.sizedBoxHeight(
                                MediaQuery.of(context).size.height * 0.02),
                            _planNameTextFiled(),

                            ///***** STANDARD PLAN & CUSTOM PLAN *****///
                            Common.sizedBoxHeight(
                                MediaQuery.of(context).size.height * 0.02),
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
                                            activeColor:
                                                AppColor.DarkPrimaryColor,
                                            value: 'STANDARD PLAN',
                                            groupValue: _selectSeriousInjuries,
                                            onChanged: (String? newValue) {
                                              setState(() {
                                                _selectSeriousInjuries =
                                                    newValue!;
                                              });
                                            },
                                          ),
                                        ),
                                        Text(
                                          'STANDARD PLAN',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            color: AppColor.deepWhite,
                                          ),
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
                                            activeColor:
                                                AppColor.DarkPrimaryColor,
                                            value: 'CUSTOM PLAN',
                                            groupValue: _selectSeriousInjuries,
                                            onChanged: (String? newValue) {
                                              setState(() {
                                                _selectSeriousInjuries =
                                                    newValue!;
                                              });
                                            },
                                          ),
                                        ),
                                        Text(
                                          'CUSTOM PLAN',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            color: AppColor.deepWhite,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            Common.sizedBoxHeight(
                              MediaQuery.of(context).size.height * 0.02,
                            ),

                            /// ****** SIGN UP BUTTON *******///
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              child: MaterialButton(
                                height: Common.displayHeight(context) * 0.06,
                                minWidth: Common.displayWidth(context) * 0.4,
                                shape: StadiumBorder(),
                                color: AppColor.primaryColor,
                                onPressed: () {
                                  if (!formKey.currentState!.validate()) {
                                  } else {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                HealthScreen()));
                                  }
                                },
                                child: Text(
                                  "CREATE PLAN",
                                  style: TextStyle(
                                    color: AppColor.deepWhite,
                                    fontSize:
                                        Common.displayWidth(context) * 0.05,
                                  ),
                                ),
                              ),
                            ),
                          ],
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

  /// ****** Video Text Filed *******///
  _videoTextFiled() {
    return Column(
      children: [
        Text(
          "VIDEO",
          style: TextStyle(
            fontSize: Common.displayWidth(context) * 0.06,
            fontWeight: FontWeight.w300,
            color: AppColor.deepWhite,
          ),
        ),
        Common.sizedBoxHeight(
          MediaQuery.of(context).size.height * 0.02,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: AppColor.primaryColor,
          ),
          child: TextFormField(
            cursorColor: AppColor.deepGrey,
            cursorHeight: 30,
            keyboardType: TextInputType.number,
            focusNode: video,
            onEditingComplete: () => FocusScope.of(context).requestFocus(price),
            style: TextStyle(color: AppColor.deepGrey),
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: "0",
              hintStyle: TextStyle(color: AppColor.deepGrey),
              errorStyle: TextStyle(color: AppColor.DarkPrimaryColor),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }

  /// ****** Price Text Filed *******///
  _priceTextFiled() {
    return Column(
      children: [
        Text(
          "PRICE",
          style: TextStyle(
            fontSize: Common.displayWidth(context) * 0.06,
            fontWeight: FontWeight.w300,
            color: AppColor.deepWhite,
          ),
        ),
        Common.sizedBoxHeight(
          MediaQuery.of(context).size.height * 0.02,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: AppColor.primaryColor,
          ),
          child: TextFormField(
            cursorColor: AppColor.deepGrey,
            cursorHeight: 30,
            keyboardType: TextInputType.number,
            focusNode: price,
            onEditingComplete: () =>
                FocusScope.of(context).requestFocus(videoCall),
            style: TextStyle(color: AppColor.deepGrey),
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: "0",
              hintStyle: TextStyle(color: AppColor.deepGrey),
              errorStyle: TextStyle(color: AppColor.DarkPrimaryColor),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }

  /// ****** Price Text Filed *******///
  _videoCallTextFiled() {
    return Column(
      children: [
        Text(
          "VIDEO CALL",
          style: TextStyle(
            fontSize: Common.displayWidth(context) * 0.06,
            fontWeight: FontWeight.w300,
            color: AppColor.deepWhite,
          ),
        ),
        Common.sizedBoxHeight(
          MediaQuery.of(context).size.height * 0.02,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: AppColor.primaryColor,
          ),
          child: TextFormField(
            cursorColor: AppColor.deepGrey,
            cursorHeight: 30,
            keyboardType: TextInputType.number,
            focusNode: videoCall,
            onEditingComplete: () =>
                FocusScope.of(context).requestFocus(validity),
            style: TextStyle(color: AppColor.deepGrey),
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: "0",
              hintStyle: TextStyle(color: AppColor.deepGrey),
              errorStyle: TextStyle(color: AppColor.DarkPrimaryColor),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }

  /// ****** Validity Text Filed *******///
  _validityTextFiled() {
    return Column(
      children: [
        Text(
          "VALIDITY",
          style: TextStyle(
            fontSize: Common.displayWidth(context) * 0.06,
            fontWeight: FontWeight.w300,
            color: AppColor.deepWhite,
          ),
        ),
        Common.sizedBoxHeight(
          MediaQuery.of(context).size.height * 0.02,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: AppColor.primaryColor,
          ),
          child: TextFormField(
            cursorColor: AppColor.deepGrey,
            cursorHeight: 30,
            keyboardType: TextInputType.number,
            focusNode: validity,
            onEditingComplete: () =>
                FocusScope.of(context).requestFocus(planName),
            style: TextStyle(color: AppColor.deepGrey),
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: "0",
              hintStyle: TextStyle(color: AppColor.deepGrey),
              errorStyle: TextStyle(color: AppColor.DarkPrimaryColor),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }

  /// ****** Plan Name Text Filed *******///
  _planNameTextFiled() {
    return Column(
      children: [
        Text(
          "PLAN NAME",
          style: TextStyle(
            fontSize: Common.displayWidth(context) * 0.06,
            fontWeight: FontWeight.w300,
            color: AppColor.deepWhite,
          ),
        ),
        Common.sizedBoxHeight(
          MediaQuery.of(context).size.height * 0.02,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: AppColor.primaryColor,
          ),
          child: TextFormField(
            cursorColor: AppColor.deepGrey,
            cursorHeight: 30,
            keyboardType: TextInputType.number,
            focusNode: planName,
            style: TextStyle(color: AppColor.deepGrey),
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: "0",
              hintStyle: TextStyle(color: AppColor.deepGrey),
              errorStyle: TextStyle(color: AppColor.DarkPrimaryColor),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
