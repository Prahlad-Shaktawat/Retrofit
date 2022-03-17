import 'package:retrofit/screen/health_screen.dart';
import 'package:retrofit/utils/common.dart';
import 'package:retrofit/utils/routes.dart';
import 'package:retrofit/utils/theme.dart';
import 'package:retrofit/utils/validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late String getEmail, getPassword;
  FocusNode email = FocusNode();
  FocusNode password = FocusNode();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "SIGN UP",
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
                  ///***** SIGN UP FORM *******///
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 32.0),
                    child: Text(
                      "Create an account",
                      textScaleFactor: 1.5,
                      style: TextStyle(
                        color: AppColor.DarkPrimaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

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
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16.0),
                              child: Text(
                                "JOIN US",
                                style: TextStyle(
                                  fontSize: Common.displayWidth(context) * 0.06,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey.shade400,
                                ),
                              ),
                            ),

                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              focusNode: email,
                              onEditingComplete: () =>
                                  FocusScope.of(context).requestFocus(password),
                              onSaved: (email) {
                                setState(() {
                                  getEmail = email!;
                                });
                              },
                              validator: (email) {
                                if (email!.trim().isEmpty) {
                                  return "Please Enter Email";
                                } else if (!Validator.isValidEmail(
                                    email.trim())) {
                                  return "Please Enter Valid Email";
                                } else {
                                  return null;
                                }
                              },
                              style: TextStyle(color: AppColor.deepWhite),
                              decoration: InputDecoration(
                                hintText: "*EMAIL",
                                hintStyle: TextStyle(color: AppColor.deepWhite),
                                errorStyle:
                                    TextStyle(color: AppColor.DarkPrimaryColor),
                                enabledBorder: _enabledBorder,
                                focusedBorder: _enabledBorder,
                                disabledBorder: _enabledBorder,
                                focusedErrorBorder: _enabledBorder,
                                border: _enabledBorder,
                                errorBorder: _enabledBorder,
                              ),
                            ),

                            Common.sizedBoxHeight(
                              MediaQuery.of(context).size.height * 0.02,
                            ),

                            TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              focusNode: password,
                              onSaved: (password) {
                                setState(() {
                                  getPassword = password!;
                                });
                              },
                              validator: (password) {
                                if (password!.trim().isEmpty) {
                                  return "Please Enter Password";
                                } else if (!Validator.isValidPassword(
                                    password.trim())) {
                                  return "Please Enter Valid Password";
                                } else {
                                  return null;
                                }
                              },
                              style: TextStyle(color: AppColor.deepWhite),
                              decoration: InputDecoration(
                                hintText: "*PASSWORD",
                                hintStyle: TextStyle(color: AppColor.deepWhite),
                                errorStyle:
                                    TextStyle(color: AppColor.DarkPrimaryColor),
                                fillColor: Colors.red,
                                enabledBorder: _enabledBorder,
                                focusedBorder: _enabledBorder,
                                disabledBorder: _enabledBorder,
                                focusedErrorBorder: _enabledBorder,
                                border: _enabledBorder,
                                errorBorder: _enabledBorder,
                              ),
                            ),

                            /// ****** SIGN UP BUTTON *******///
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              child: MaterialButton(
                                height: Common.displayHeight(context) * 0.05,
                                minWidth: Common.displayWidth(context) * 0.6,
                                shape: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: AppColor.deepWhite,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                color: AppColor.DarkPrimaryColor,
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
                                  "Sign Up",
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

                  ///******** SIGN UP SCREEN ********///
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account ?",
                        textScaleFactor: 1.2,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.signInScreen);
                        },
                        child: Text(
                          "SIGN IN",
                          textScaleFactor: 1.2,
                          style: TextStyle(color: AppColor.DarkPrimaryColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  var _enabledBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(5),
    borderSide: BorderSide(
      color: Colors.grey,
      width: 1.5,
    ),
  );
}
