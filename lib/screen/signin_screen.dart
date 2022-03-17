import 'package:flutter/cupertino.dart';
import 'package:retrofit/screen/client_dashboard.dart';
import 'package:retrofit/screen/coach_dashborad_screen.dart';
import 'package:retrofit/utils/common.dart';
import 'package:retrofit/utils/routes.dart';
import 'package:retrofit/utils/theme.dart';
import 'package:retrofit/utils/validation.dart';
import 'package:flutter/material.dart';

import 'forgot_password_screen.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
          "SIGN IN",
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
                  ///***** Login Form *******///
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      /// ****** Title *****///
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Text(
                          "Already have an account?",
                          textScaleFactor: 1.5,
                          style: TextStyle(
                            color: AppColor.DarkPrimaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      ///********* Login With Google *********///
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: MaterialButton(
                          height: Common.displayHeight(context) * 0.06,
                          minWidth: Common.displayWidth(context) * 0.6,
                          shape: StadiumBorder(),
                          color: AppColor.deepRed,
                          onPressed: () {},
                          child: Text(
                            "Login With Google",
                            style: TextStyle(
                                color: AppColor.deepWhite, letterSpacing: 2),
                          ),
                        ),
                      ),

                      ///******** Login Form TextFiled ********///
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: AppColor.deepGrey,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Column(
                              children: [
                                TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  focusNode: email,
                                  onEditingComplete: () =>
                                      FocusScope.of(context)
                                          .requestFocus(password),
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
                                  decoration: InputDecoration(
                                    hintText: "*EMAIL",
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
                                  decoration: InputDecoration(
                                    hintText: "*PASSWORD",
                                    enabledBorder: _enabledBorder,
                                    focusedBorder: _enabledBorder,
                                    disabledBorder: _enabledBorder,
                                    focusedErrorBorder: _enabledBorder,
                                    border: _enabledBorder,
                                    errorBorder: _enabledBorder,
                                  ),
                                ),

                                /// ****** SIGN IN BUTTON *******///
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16.0),
                                  child: MaterialButton(
                                    height:
                                        Common.displayHeight(context) * 0.05,
                                    minWidth:
                                        Common.displayWidth(context) * 0.6,
                                    shape: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    color: AppColor.deepGrey,
                                    onPressed: () {
                                      Common.removeKeyBoardFocus(context);
                                      if (!formKey.currentState!.validate()) {
                                        return null;
                                      } else {
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return Dialog(
                                                child: Container(
                                                  height: 130,
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        height: 40,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  "Please Select Your Category"),
                                                              CupertinoButton(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                onPressed: () {
                                                                  Navigator.pop(
                                                                      context);
                                                                },
                                                                child: Text(
                                                                  "Cancel",
                                                                  style: TextStyle(
                                                                      color: AppColor
                                                                          .deepRed),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      CupertinoButton(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        onPressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          CoachDashBoard()));
                                                        },
                                                        child: Container(
                                                          height: 40,
                                                          alignment:
                                                              Alignment.center,
                                                          width: MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .width,
                                                          child: Text(
                                                            "You Are Coach",
                                                            style: TextStyle(
                                                              color: AppColor
                                                                  .deepBlack,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      CupertinoButton(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        onPressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          ClientDashboardScreen()));
                                                        },
                                                        child: Container(
                                                          height: 40,
                                                          alignment:
                                                              Alignment.center,
                                                          width: MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .width,
                                                          child: Text(
                                                            "You Are Client",
                                                            style: TextStyle(
                                                              color: AppColor
                                                                  .deepBlack,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            });
                                      }
                                    },
                                    child: Text(
                                      "Sign In",
                                      style: TextStyle(
                                        color: AppColor.deepWhite,
                                        fontSize:
                                            Common.displayWidth(context) * 0.05,
                                      ),
                                    ),
                                  ),
                                ),

                                ///******** Forgot Password Button ******///
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ForgotPasswordScreen()));
                                  },
                                  child: Text(
                                    "Forgot Password ?",
                                    style: TextStyle(
                                      color: AppColor.DarkPrimaryColor,
                                      fontSize:
                                          Common.displayWidth(context) * 0.04,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      ///********** OR **********///
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 32.0),
                        child: Text(
                          "------------ OR ------------",
                          style: TextStyle(
                            fontSize: Common.displayWidth(context) * 0.06,
                            fontWeight: FontWeight.bold,
                            color: AppColor.deepGrey,
                          ),
                        ),
                      ),

                      ///******** SIGN UP SCREEN ********///
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't Have An Account ?",
                            textScaleFactor: 1.2,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, Routes.signUpScreen);
                            },
                            child: Text(
                              "SIGN UP",
                              textScaleFactor: 1.2,
                              style:
                                  TextStyle(color: AppColor.DarkPrimaryColor),
                            ),
                          ),
                        ],
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
