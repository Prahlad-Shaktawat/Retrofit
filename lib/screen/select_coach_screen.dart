import 'package:retrofit/utils/common.dart';
import 'package:retrofit/utils/theme.dart';
import 'package:flutter/material.dart';

class SelectCoachScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Coach"),
      ),
      body: Container(
        height: Common.displayHeight(context) * 1,
        width: Common.displayWidth(context) * 1,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 16.0,
                      right: 16.0,
                      bottom: 24.0,
                    ),
                    child: Column(
                      children: [
                        Common.sizedBoxHeight(
                            MediaQuery.of(context).size.height * 0.03),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "BOOKED COACHES",
                            textScaleFactor: 1.3,
                          ),
                        ),
                        Common.sizedBoxHeight(
                            MediaQuery.of(context).size.height * 0.06),
                        CircleAvatar(
                          radius: 70,
                          backgroundImage: NetworkImage(
                            "https://www.shaadidukaan.com/vogue/wp-content/uploads/2019/08/hug-kiss-images.jpg",
                          ),
                        ),
                        Common.sizedBoxHeight(
                            MediaQuery.of(context).size.height * 0.03),
                        Text(
                          "SARI AL SAYEGH",
                          textScaleFactor: 1.5,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 16.0,
                      right: 16.0,
                      bottom: 24.0,
                    ),
                    child: Column(
                      children: [
                        Common.sizedBoxHeight(
                            MediaQuery.of(context).size.height * 0.03),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "ALL COACHES",
                            textScaleFactor: 1.3,
                          ),
                        ),
                        Common.sizedBoxHeight(
                            MediaQuery.of(context).size.height * 0.06),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 70,
                              backgroundImage: NetworkImage(
                                "https://www.shaadidukaan.com/vogue/wp-content/uploads/2019/08/hug-kiss-images.jpg",
                              ),
                            ),
                            Common.sizedBoxHeight(
                                MediaQuery.of(context).size.height * 0.03),
                            Text(
                              "DRAGOSLAV DRAGO RADIC",
                              textScaleFactor: 1.5,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Common.sizedBoxHeight(
                            MediaQuery.of(context).size.height * 0.06),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 70,
                              backgroundImage: NetworkImage(
                                "https://www.shaadidukaan.com/vogue/wp-content/uploads/2019/08/hug-kiss-images.jpg",
                              ),
                            ),
                            Common.sizedBoxHeight(
                                MediaQuery.of(context).size.height * 0.03),
                            Text(
                              "IANA MIZUNSCHI",
                              textScaleFactor: 1.5,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
