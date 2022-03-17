import 'package:retrofit/screen/client_dashboard.dart';
import 'package:retrofit/utils/common.dart';
import 'package:retrofit/utils/theme.dart';
import 'package:retrofit/utils/validation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangePasswordScreen extends StatefulWidget {
  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  late String getOldPassword, getNewPassword, getConfirmNewPassword;
  FocusNode oldPassword = FocusNode();
  FocusNode newPassword = FocusNode();
  FocusNode confirmNewPassword = FocusNode();
  var formKey = GlobalKey<FormState>();

  TextEditingController _newPassword = TextEditingController();
  TextEditingController _confirmNewPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Change Password"),
      ),
      body: Container(
        height: Common.displayHeight(context) * 1,
        width: Common.displayWidth(context) * 1,
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor.primaryColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "CHANGE PASSWORD",
                            textScaleFactor: 1.5,
                            style: GoogleFonts.alatsi(
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          ///********* OLD PASSWORD TEXTFIELD **********///
                          Common.sizedBoxHeight(
                              MediaQuery.of(context).size.height * 0.02),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "OLD PASSWORD",
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
                                      keyboardType:
                                          TextInputType.visiblePassword,
                                      focusNode: oldPassword,
                                      onEditingComplete: () =>
                                          FocusScope.of(context)
                                              .requestFocus(newPassword),
                                      onSaved: (password) {
                                        setState(() {
                                          getOldPassword = password!;
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
                                        hintText: "*******",
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          ///******** NEW PASSWORD *******///
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "NEW PASSWORD",
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
                                      controller: _newPassword,
                                      keyboardType:
                                          TextInputType.visiblePassword,
                                      focusNode: newPassword,
                                      onEditingComplete: () =>
                                          FocusScope.of(context)
                                              .requestFocus(confirmNewPassword),
                                      onSaved: (password) {
                                        setState(() {
                                          getNewPassword = password!;
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
                                        hintText: "*******",
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          ///******** CONFIRM NEW PASSWORD *******///
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "CONFIRM NEW PASSWORD",
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
                                      controller: _confirmNewPassword,
                                      keyboardType:
                                          TextInputType.visiblePassword,
                                      focusNode: confirmNewPassword,
                                      onSaved: (password) {
                                        setState(() {
                                          getConfirmNewPassword = password!;
                                        });
                                      },
                                      validator: (password) {
                                        if (password!.trim().isEmpty) {
                                          return "Please Enter Confirm Password";
                                        } else if (_newPassword.text !=
                                            _confirmNewPassword.text) {
                                          return "Please Enter  Password";
                                        } else {
                                          return null;
                                        }
                                      },
                                      decoration: InputDecoration(
                                        hintText: "*******",
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                /// ****** SAVE BUTTON *******///
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: MaterialButton(
                    height: Common.displayHeight(context) * 0.07,
                    minWidth: Common.displayWidth(context) * 0.4,
                    shape: OutlineInputBorder(
                      borderSide: BorderSide(width: 0),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    color: AppColor.deepGrey,
                    onPressed: () {
                      Common.removeKeyBoardFocus(context);
                      if (!formKey.currentState!.validate()) {
                      } else {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ClientDashboardScreen()));
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
    );
  }
}
