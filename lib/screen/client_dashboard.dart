import 'package:retrofit/screen/client_drawer.dart';
import 'package:retrofit/utils/common.dart';
import 'package:retrofit/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

class ClientDashboardScreen extends StatefulWidget {
  @override
  _ClientDashboardScreenState createState() => _ClientDashboardScreenState();
}

class _ClientDashboardScreenState extends State<ClientDashboardScreen> {
  var captureFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: ClientDrawer(),
      appBar: AppBar(
        title: Text(
          "Client",
          style: TextStyle(color: AppColor.deepBlack),
        ),
      ),
      body: Container(
        height: Common.displayHeight(context) * 1,
        width: Common.displayWidth(context) * 1,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    _showModalBottomSheet();
                  },
                  child: Container(
                    height: Common.displayHeight(context) * 0.5,
                    width: Common.displayWidth(context) * 1,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColor.deepGrey,
                      ),
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor.lightGrey,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.bottomCenter,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColor.deepGrey,
                              ),
                              borderRadius: BorderRadius.circular(30),
                              color: AppColor.primaryColor,
                            ),
                            height: Common.displayHeight(context) * 0.2,
                            width: Common.displayWidth(context) * 0.6,
                            child: Icon(
                              Icons.upload_rounded,
                              size: 100,
                              color: AppColor.deepWhite,
                            ),
                          ),
                          Common.sizedBoxHeight(
                              MediaQuery.of(context).size.height * 0.03),
                          Text(
                            "Select Files To Upload or Video Files",
                            textAlign: TextAlign.center,
                            textScaleFactor: 1.5,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              /// ****** VIDEO UPLOAD BUTTON *******///
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: MaterialButton(
                  height: Common.displayHeight(context) * 0.07,
                  minWidth: Common.displayWidth(context) * 0.4,
                  shape: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  color: AppColor.deepGrey,
                  onPressed: () {},
                  child: Text(
                    "UPLOAD",
                    style: TextStyle(
                      color: AppColor.deepWhite,
                      fontSize: Common.displayWidth(context) * 0.04,
                    ),
                  ),
                ),
              ),

              /// ****** VIDEO CANCEL BUTTON *******///
              MaterialButton(
                color: AppColor.deepGrey,
                height: Common.displayHeight(context) * 0.07,
                minWidth: Common.displayWidth(context) * 0.4,
                shape: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                onPressed: () {},
                child: Text(
                  "CANCEL",
                  style: TextStyle(
                    color: AppColor.deepWhite,
                    fontSize: Common.displayWidth(context) * 0.04,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _showModalBottomSheet() {
    return showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: Common.displayHeight(context) * 0.23,
            width: Common.displayWidth(context) * 1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(20),
                right: Radius.circular(20),
              ),
              color: AppColor.deepWhite,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ///**** Camera & File *****///
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      ///******* Camera *******///
                      InkWell(
                        onTap: () {
                          _getCamera();
                        },
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: SvgPicture.asset(
                                "asset/photo.svg",
                                height: 50,
                              ),
                            ),
                            Text(
                              "Video",
                              textScaleFactor: 0.9,
                            ),
                          ],
                        ),
                      ),
                      Common.sizedBoxWidth(
                          MediaQuery.of(context).size.width * 0.1),

                      ///******* Files *******///
                      InkWell(
                        onTap: () {
                          _getGallery();
                        },
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: SvgPicture.asset(
                                "asset/file-transfer.svg",
                                height: 50,
                              ),
                            ),
                            Text(
                              "Files",
                              textScaleFactor: 0.9,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  endIndent: 20,
                  indent: 20,
                  height: 0,
                  color: AppColor.deepGrey,
                ),

                ///******* Cancel *******///
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: Common.displayHeight(context) * 0.06,
                    width: Common.displayWidth(context) * 1,
                    child: Text("Cancel"),
                  ),
                ),
              ],
            ),
          );
        });
  }

  _getCamera() async {
    XFile? image = await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      Navigator.pop(context);
      if (captureFile != null) {
        captureFile = image!.path;
      }
    });
  }

  _getGallery() async {
    XFile? video = await ImagePicker().pickVideo(source: ImageSource.gallery);
    setState(() {
      Navigator.pop(context);
      if (captureFile != null) {
        captureFile = video!.path;
      }
    });
  }
}
