import 'package:retrofit/screen/signin_screen.dart';
import 'package:retrofit/utils/common.dart';
import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ///********* Cancel Button *********///
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: IconButton(
                    icon: Icon(Icons.cancel_outlined),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ),
            ),
            SizedBox(height: 50),

            ListTile(
              onTap: () {},
              title: Text(
                "Plans",
                textScaleFactor: 1.5,
                textAlign: TextAlign.center,
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                "Coaches",
                textScaleFactor: 1.5,
                textAlign: TextAlign.center,
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                "About",
                textScaleFactor: 1.5,
                textAlign: TextAlign.center,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignInScreen(),
                  ),
                );
              },
              title: Text(
                "Sign Up",
                textScaleFactor: 1.5,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
