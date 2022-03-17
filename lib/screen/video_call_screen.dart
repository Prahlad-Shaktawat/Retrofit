import 'package:retrofit/utils/common.dart';
import 'package:retrofit/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class VideoCallScreen extends StatefulWidget {
  @override
  _VideoCallScreenState createState() => _VideoCallScreenState();
}

class _VideoCallScreenState extends State<VideoCallScreen> {
  String? _datePicker, _selection;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("VIDEO CALL"),
      ),
      body: Container(
        height: Common.displayHeight(context) * 1,
        width: Common.displayWidth(context) * 1,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: Common.displayHeight(context) * 0.5,
                width: Common.displayWidth(context) * 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ///********** title *********///
                      Text(
                        "LAST CALL STATUS: NONE BOOK A CALL",
                        style: GoogleFonts.sarabun(
                          fontWeight: FontWeight.bold,
                        ),
                        textScaleFactor: 1.7,
                      ),

                      ///********** Date For Call *********///
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Row(
                          children: [
                            Text(
                              "DATE FOR CALL:",
                              textScaleFactor: 1.5,
                              style: GoogleFonts.yeonSung(),
                            ),
                            Common.sizedBoxWidth(
                                MediaQuery.of(context).size.height * 0.02),
                            Container(
                              alignment: Alignment.center,
                              height: Common.displayHeight(context) * 0.06,
                              width: Common.displayWidth(context) * 0.35,
                              decoration: BoxDecoration(
                                color: AppColor.deepWhite,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: TextButton(
                                onPressed: () {
                                  _selectDate();
                                },
                                child: Text(
                                  _datePicker != null
                                      ? DateFormat.yMMMd()
                                          .format(DateTime.parse(_datePicker!))
                                      : "Select Date",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      ///********** Time Slot *********///
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Row(
                          children: [
                            Text(
                              "TIME SLOT:",
                              textScaleFactor: 1.5,
                              style: GoogleFonts.yeonSung(),
                            ),
                            Common.sizedBoxWidth(
                                MediaQuery.of(context).size.height * 0.02),
                            PopupMenuButton<String>(
                              onSelected: (String value) {
                                setState(() {
                                  _selection = value;
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: Common.displayHeight(context) * 0.06,
                                width: Common.displayWidth(context) * 0.6,
                                decoration: BoxDecoration(
                                  color: AppColor.deepWhite,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Text(_selection == null
                                    ? 'Select Time'
                                    : _selection.toString()),
                              ),
                              itemBuilder: (BuildContext context) =>
                                  <PopupMenuEntry<String>>[
                                const PopupMenuItem<String>(
                                  value: '06:00AM TO 09:00AM GST',
                                  child: Text('06:00AM TO 09:00AM GST'),
                                ),
                                const PopupMenuItem<String>(
                                  value: '09:00AM TO 12:00PM GST',
                                  child: Text('09:00AM TO 12:00PM GST'),
                                ),
                                const PopupMenuItem<String>(
                                  value: '12:00PM TO 03:00PM GST',
                                  child: Text('12:00PM TO 03:00PM GST'),
                                ),
                                const PopupMenuItem<String>(
                                  value: '03:00PM TO 06:00PM GST',
                                  child: Text('03:00PM TO 06:00PM GST'),
                                ),
                                const PopupMenuItem<String>(
                                  value: '06:00PM TO 09:00PM GST',
                                  child: Text('06:00PM TO 09:00PM GST'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      /// ****** BOOK BUTTON *******///
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: MaterialButton(
                            elevation: 0,
                            height: Common.displayHeight(context) * 0.06,
                            minWidth: Common.displayWidth(context) * 0.3,
                            shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                width: 0,
                              ),
                            ),
                            color: AppColor.deepGrey,
                            onPressed: () {},
                            child: Text(
                              "BOOK",
                              style: TextStyle(
                                color: AppColor.deepWhite,
                                fontSize: Common.displayWidth(context) * 0.04,
                              ),
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
      ),
    );
  }

  _selectDate() async {
    final DateTime? date = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(3000));

    if (date != null) {
      setState(() {
        _datePicker = DateFormat("yyy-mm-dd").format(date).toString();
      });
    }
  }
}
