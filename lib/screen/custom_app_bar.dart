import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  String? isTitle;
  bool? isMenu;
  bool? isClientDrawer;
  bool? isCoachDrawer;
  bool? isBack;

  CustomAppBar({
    required this.isTitle,
    required this.isMenu,
    required this.isClientDrawer,
    required this.isCoachDrawer,
    required this.isBack,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        leading: isMenu!
            ? IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              )
            : isBack!
                ? IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      Navigator.pop(context);
                    })
                : isCoachDrawer!
                    ? IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        })
                    : isClientDrawer!
                        ? IconButton(
                            icon: Icon(Icons.menu),
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            })
                        : SizedBox(),
        title: Text(
          isTitle!,
          style: TextStyle(
            color: Colors.grey.shade100,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size(1000, 56);
}
