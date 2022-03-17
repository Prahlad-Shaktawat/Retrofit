import 'package:retrofit/utils/common.dart';
import 'package:retrofit/utils/theme.dart';
import 'package:flutter/material.dart';

class CoachPlansScreen extends StatefulWidget {
  @override
  _CoachPlansScreenState createState() => _CoachPlansScreenState();
}

class _CoachPlansScreenState extends State<CoachPlansScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: Common.displayHeight(context) * 1,
        width: Common.displayWidth(context) * 1,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ///********* STANDARD PLANS ********///
                Text(
                  "STANDARD PLANS",
                  textScaleFactor: 1.5,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                ///********* RECENT PLANS ********///
                Common.sizedBoxHeight(
                    MediaQuery.of(context).size.height * 0.03),
                Text(
                  "RECENT PLANS",
                  textScaleFactor: 1.5,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                ///********* RANDOM ********///
                Common.sizedBoxHeight(
                    MediaQuery.of(context).size.height * 0.03),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.star),
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
                                Text("10"),
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

                ///********* BEGINNER ********///
                Common.sizedBoxHeight(
                    MediaQuery.of(context).size.height * 0.03),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.star),
                        Text("BEGINNER"),
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
                                Text("10"),
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
                      "\$15.0/MONTH",
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
