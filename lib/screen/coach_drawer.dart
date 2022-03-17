import 'package:retrofit/utils/common.dart';
import 'package:retrofit/utils/theme.dart';
import 'package:flutter/material.dart';

import 'coach_client_dashboard.dart';
import 'coach_plans_screen.dart';
import 'coach_profile_screen.dart';

class CoachDrawer extends StatefulWidget {
  @override
  _CoachDrawerState createState() => _CoachDrawerState();
}

class _CoachDrawerState extends State<CoachDrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: AppColor.deepGrey,
        ),
        child: Drawer(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  alignment: Alignment.topRight,
                  icon: Icon(Icons.cancel),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Common.sizedBoxHeight(MediaQuery.of(context).size.height * 0.05),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "IANA MIZUNSCHI",
                    textScaleFactor: 1.5,
                    style: TextStyle(
                      color: AppColor.deepWhite,
                    ),
                  ),
                  Common.sizedBoxHeight(
                      MediaQuery.of(context).size.height * 0.01),
                  Text(
                    "IANAMIZUNSCHI4",
                    style: TextStyle(
                      color: AppColor.deepWhite,
                    ),
                  ),
                  Common.sizedBoxHeight(
                      MediaQuery.of(context).size.height * 0.02),
                ],
              ),
              Common.sizedBoxHeight(MediaQuery.of(context).size.height * 0.07),
              Column(
                children: List.generate(_clientDrawerItem.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      top: 8.0,
                      bottom: 8.0,
                      right: 100.0,
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      height: Common.displayHeight(context) * 0.07,
                      width: Common.displayWidth(context) * 1,
                      decoration: BoxDecoration(
                        color: AppColor.primaryColor,
                        borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(100),
                        ),
                      ),
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  _clientDrawerItem[index]["Navigate"],
                            ),
                          );
                        },
                        title: Text(
                          _clientDrawerItem[index]["title"],
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List _clientDrawerItem = [
  {
    "title": "CLIENTS",
    "Navigate": CoachClientDashBoard(),
  },
  {
    "title": "PLANS",
    "Navigate": CoachPlansScreen(),
  },
  {
    "title": "MY PROFILE",
    "Navigate": CoachProfileScreen(),
  },
];
