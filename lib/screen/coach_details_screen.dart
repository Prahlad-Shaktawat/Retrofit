import 'package:retrofit/utils/common.dart';
import 'package:retrofit/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CoachDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Coach Name",
          style: TextStyle(color: AppColor.deepBlack),
        ),
      ),
      body: Container(
        height: Common.displayHeight(context) * 1,
        width: Common.displayWidth(context) * 1,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Column(
              children: [
                ///********** Coach Image **********///
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    "https://assets.ajio.com/medias/sys_master/root/20210403/4Zeb/606863a67cdb8c1f1474dd8b/-288Wx360H-461085141-blue-MODEL.jpg",
                    fit: BoxFit.cover,
                    height: Common.displayHeight(context) * 0.77,
                    width: Common.displayWidth(context) * 1,
                  ),
                ),

                ///********* Book Button *********///
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: MaterialButton(
                      height: Common.displayHeight(context) * 0.06,
                      minWidth: Common.displayWidth(context) * 0.4,
                      shape: StadiumBorder(),
                      color: AppColor.DarkPrimaryColor,
                      onPressed: () {},
                      child: Text(
                        "BOOK COACH",
                        style: TextStyle(color: AppColor.deepWhite),
                      ),
                    ),
                  ),
                ),

                ///******** Other Social *********///
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {},
                          child: SvgPicture.asset(
                            "asset/facebook-logo.svg",
                            height: Common.displayHeight(context) * 0.07,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {},
                          child: SvgPicture.asset(
                            "asset/instagram-logo.svg",
                            height: Common.displayHeight(context) * 0.07,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Common.sizedBoxHeight(
                    MediaQuery.of(context).size.height * 0.02),

                ///********** FOR ANY QUERIES **********///
                Column(
                  children: [
                    Text(
                      "For any queries, contact us at",
                      textScaleFactor: 1.5,
                    ),
                    InkWell(
                        onTap: () {},
                        child: Text(
                          "info@retrofithelps.com",
                          textScaleFactor: 1.2,
                          style: TextStyle(
                            color: AppColor.DarkPrimaryColor,
                          ),
                        )),
                    Common.sizedBoxHeight(
                      MediaQuery.of(context).size.height * 0.02,
                    ),
                    InkWell(
                        onTap: () {},
                        child: Text(
                          "Terms & Conditions",
                          textScaleFactor: 1.5,
                        )),
                    InkWell(
                        onTap: () {},
                        child: Text(
                          "Privacy Policy",
                          textScaleFactor: 1.5,
                        )),
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
