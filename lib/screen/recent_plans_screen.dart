import 'package:retrofit/screen/create_plan_screen.dart';
import 'package:retrofit/utils/common.dart';
import 'package:retrofit/utils/theme.dart';
import 'package:flutter/material.dart';

class RecentPlansScreen extends StatefulWidget {
  @override
  _RecentPlansScreenState createState() => _RecentPlansScreenState();
}

class _RecentPlansScreenState extends State<RecentPlansScreen> {
  bool beginner = false;
  bool random = false;
  bool intermediate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CreatePlanScreen()));
        },
        backgroundColor: AppColor.deepGrey,
        child: Icon(
          Icons.add,
          color: AppColor.primaryColor,
        ),
      ),
      body: Container(
        height: Common.displayHeight(context) * 1,
        width: Common.displayWidth(context) * 1,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Column(
                  children: [
                    ///********* STANDARD PLANS ********///
                    Text(
                      "STANDARD PLANS",
                      textScaleFactor: 1.5,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Common.sizedBoxHeight(
                        MediaQuery.of(context).size.height * 0.03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Checkbox(
                            visualDensity: VisualDensity.compact,
                            checkColor: AppColor.lightGrey,
                            activeColor: AppColor.deepGrey,
                            value: beginner,
                            onChanged: (value) {
                              setState(() {
                                beginner = value!;
                              });
                            }),
                        Text(
                          "BEGINNER",
                          style: TextStyle(
                            color: AppColor.deepBlack,
                          ),
                        ),
                        Icon(Icons.delete),
                      ],
                    ),
                    Common.sizedBoxHeight(
                        MediaQuery.of(context).size.height * 0.03),
                    Container(
                      height: Common.displayHeight(context) * 0.25,
                      width: Common.displayWidth(context) * 1,
                      decoration: BoxDecoration(
                        color: AppColor.deepGrey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "NO. OF MONTHS",
                                  style: TextStyle(
                                    color: AppColor.deepWhite,
                                  ),
                                ),
                                Text(
                                  "2",
                                  style: TextStyle(
                                    color: AppColor.deepWhite,
                                  ),
                                ),
                              ],
                            ),
                            Common.sizedBoxHeight(
                                MediaQuery.of(context).size.height * 0.03),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "VIDEOS",
                                  style: TextStyle(
                                    color: AppColor.deepWhite,
                                  ),
                                ),
                                Text(
                                  "5",
                                  style: TextStyle(
                                    color: AppColor.deepWhite,
                                  ),
                                ),
                              ],
                            ),
                            Common.sizedBoxHeight(
                                MediaQuery.of(context).size.height * 0.03),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "VIDEOS CALL",
                                  style: TextStyle(
                                    color: AppColor.deepWhite,
                                  ),
                                ),
                                Text(
                                  "2",
                                  style: TextStyle(
                                    color: AppColor.deepWhite,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Common.sizedBoxHeight(
                        MediaQuery.of(context).size.height * 0.03),
                    Text(
                      "\$15.0/MONTH",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                ///******** INTERMEDIATE PLAN **********///
                Column(
                  children: [
                    Common.sizedBoxHeight(
                        MediaQuery.of(context).size.height * 0.03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Checkbox(
                            visualDensity: VisualDensity.compact,
                            checkColor: AppColor.lightGrey,
                            activeColor: AppColor.deepGrey,
                            value: intermediate,
                            onChanged: (value) {
                              setState(() {
                                intermediate = value!;
                              });
                            }),
                        Text(
                          "INTERMEDIATE PLAN",
                          style: TextStyle(
                            color: AppColor.deepBlack,
                          ),
                        ),
                        Icon(Icons.delete),
                      ],
                    ),
                    Common.sizedBoxHeight(
                        MediaQuery.of(context).size.height * 0.03),
                    Container(
                      height: Common.displayHeight(context) * 0.25,
                      width: Common.displayWidth(context) * 1,
                      decoration: BoxDecoration(
                        color: AppColor.deepGrey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "NO. OF MONTHS",
                                  style: TextStyle(
                                    color: AppColor.deepWhite,
                                  ),
                                ),
                                Text(
                                  "2",
                                  style: TextStyle(
                                    color: AppColor.deepWhite,
                                  ),
                                ),
                              ],
                            ),
                            Common.sizedBoxHeight(
                                MediaQuery.of(context).size.height * 0.03),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "VIDEOS",
                                  style: TextStyle(
                                    color: AppColor.deepWhite,
                                  ),
                                ),
                                Text(
                                  "5",
                                  style: TextStyle(
                                    color: AppColor.deepWhite,
                                  ),
                                ),
                              ],
                            ),
                            Common.sizedBoxHeight(
                                MediaQuery.of(context).size.height * 0.03),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "VIDEOS CALL",
                                  style: TextStyle(
                                    color: AppColor.deepWhite,
                                  ),
                                ),
                                Text(
                                  "2",
                                  style: TextStyle(
                                    color: AppColor.deepWhite,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Common.sizedBoxHeight(
                        MediaQuery.of(context).size.height * 0.03),
                    Text(
                      "\$15.0/MONTH",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                ///********* RANDOM ********///
                Common.sizedBoxHeight(
                    MediaQuery.of(context).size.height * 0.03),
                Column(
                  children: [
                    ///********* RECENT PLANS ********///
                    Text(
                      "RECENT PLANS",
                      textScaleFactor: 1.5,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Common.sizedBoxHeight(
                        MediaQuery.of(context).size.height * 0.03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Checkbox(
                            visualDensity: VisualDensity.compact,
                            checkColor: AppColor.lightGrey,
                            activeColor: AppColor.deepGrey,
                            value: random,
                            onChanged: (value) {
                              setState(() {
                                random = value!;
                              });
                            }),
                        Text("RANDOM"),
                        Icon(Icons.delete),
                      ],
                    ),
                    Common.sizedBoxHeight(
                        MediaQuery.of(context).size.height * 0.03),
                    Container(
                      height: Common.displayHeight(context) * 0.25,
                      width: Common.displayWidth(context) * 1,
                      decoration: BoxDecoration(
                        color: AppColor.primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("NO. OF MONTHS"),
                                Text("3"),
                              ],
                            ),
                            Common.sizedBoxHeight(
                                MediaQuery.of(context).size.height * 0.03),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("VIDEOS"),
                                Text("6"),
                              ],
                            ),
                            Common.sizedBoxHeight(
                                MediaQuery.of(context).size.height * 0.03),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("VIDEOS CALL"),
                                Text("5"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Common.sizedBoxHeight(
                        MediaQuery.of(context).size.height * 0.03),
                    Text(
                      "\$5.0/MONTH",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
