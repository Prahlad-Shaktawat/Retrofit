import 'package:retrofit/screen/coach_drawer.dart';
import 'package:flutter/material.dart';

class CoachDashBoard extends StatefulWidget {
  @override
  _CoachDashBoardState createState() => _CoachDashBoardState();
}

class _CoachDashBoardState extends State<CoachDashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: CoachDrawer(),
    );
  }
}
