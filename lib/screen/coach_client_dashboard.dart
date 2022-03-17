import 'package:retrofit/utils/common.dart';
import 'package:retrofit/utils/theme.dart';
import 'package:flutter/material.dart';

import 'Client_profile_screen.dart';

class CoachClientDashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: Common.displayHeight(context) * 1,
        width: Common.displayWidth(context) * 1,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ///**********  PROFILE **********///
              _profile(context),

              ///**********  NAME **********///
              Common.sizedBoxHeight(MediaQuery.of(context).size.height * 0.02),
              _name(context),
            ],
          ),
        ),
      ),
    );
  }

  ///**********  PROFILE **********///
  _profile(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ClientProfileScreen()));
      },
      child: CircleAvatar(
        radius: 60,
        backgroundImage: NetworkImage(
            "https://images.unsplash.com/photo-1610413657577-10c74610c0ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80"),
      ),
    );
  }

  ///**********  NAME **********///
  _name(BuildContext context) {
    return Text(
      "PEEYUSHSANAM22",
      style: TextStyle(
          color: AppColor.DarkPrimaryColor,
          fontWeight: FontWeight.bold,
          fontSize: Common.displayWidth(context) * 0.06),
    );
  }
}
