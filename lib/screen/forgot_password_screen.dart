import 'package:retrofit/utils/common.dart';
import 'package:retrofit/utils/theme.dart';
import 'package:retrofit/utils/validation.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
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
          "FORGOT PASSWORD",
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
                      ///******** Login Form TextFiled ********///
                      Padding(
                        padding: const EdgeInsets.all(16.0),
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
                                /// ****** Title *****///
                                Text(
                                  "Enter your Registered Email ID",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: AppColor.DarkPrimaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        Common.displayWidth(context) * 0.05,
                                  ),
                                ),
                                Common.sizedBoxHeight(
                                    MediaQuery.of(context).size.height * 0.03),

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

                                /// ****** RESET BUTTON *******///
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16.0),
                                  child: MaterialButton(
                                    height:
                                        Common.displayHeight(context) * 0.06,
                                    minWidth:
                                        Common.displayWidth(context) * 0.6,
                                    shape: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    color: AppColor.deepGrey,
                                    onPressed: () {
                                      Common.removeKeyBoardFocus(context);
                                      if (!formKey.currentState!.validate()) {
                                        return null;
                                      } else {}
                                    },
                                    child: Text(
                                      "RESET PASSWORD",
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
