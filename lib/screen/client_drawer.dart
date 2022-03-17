import 'package:retrofit/screen/client_dashboard.dart';
import 'package:retrofit/screen/coach_responses_screen.dart';
import 'package:retrofit/screen/my_profile_screen.dart';
import 'package:retrofit/screen/select_coach_screen.dart';
import 'package:retrofit/screen/signin_screen.dart';
import 'package:retrofit/screen/video_call_screen.dart';
import 'package:retrofit/utils/common.dart';
import 'package:retrofit/utils/theme.dart';
import 'package:flutter/material.dart';

class ClientDrawer extends StatefulWidget {
  @override
  _ClientDrawerState createState() => _ClientDrawerState();
}

class _ClientDrawerState extends State<ClientDrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: AppColor.primaryColor,
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
                    "PRAHLAD",
                    textScaleFactor: 1.5,
                    style: TextStyle(
                      color: AppColor.deepBlack,
                    ),
                  ),
                  Common.sizedBoxHeight(
                      MediaQuery.of(context).size.height * 0.02),
                  Container(
                    alignment: Alignment.center,
                    height: Common.displayHeight(context) * 0.15,
                    width: Common.displayWidth(context) * 0.3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: [
                          BoxShadow(
                            color: AppColor.deepGrey,
                            blurRadius: 5,
                            spreadRadius: 1,
                            offset: Offset(0, 1),
                          )
                        ]),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SelectCoachScreen()));
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdJO7QFLFYGQbuyIg9hbaVfsM9hJoNrxV8y64Smyl558uNA3P5B9_276LCYGbuhOGtiHc&usqp=CAU",
                          height: Common.displayHeight(context) * 0.3,
                          width: Common.displayWidth(context) * 0.3,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
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
                        color: AppColor.deepWhite,
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
                          textAlign: TextAlign.start,
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
    "title": "MY PROFILE",
    "Navigate": MyProfileScreen(),
  },
  {
    "title": "UPLOAD VIDEO",
    "Navigate": ClientDashboardScreen(),
  },
  {
    "title": "VIDEO CALL",
    "Navigate": VideoCallScreen(),
  },
  {
    "title": "COACH RESPONSES",
    "Navigate": CoachResponsesScreen(),
  },
  {
    "title": "LOG OUT",
    "Navigate": SignInScreen(),
  },
];
