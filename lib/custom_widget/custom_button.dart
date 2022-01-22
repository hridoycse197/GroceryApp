import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String title;
  Color bgcolor;
  Color fontcolor;
  Image icon;
  CustomButton(
      {required this.bgcolor,
      required this.icon,
      required this.title,
      required this.fontcolor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(Size(353, 67)),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18))),
        backgroundColor: MaterialStateProperty.all(
          bgcolor,
        ),
      ),
      onPressed: () {},
      child: ListTile(
        leading: icon,
        title: Text(
          title,
          style: TextStyle(
            fontFamily: 'Gilroy',
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: fontcolor,
          ),
        ),
      ),
    );
  }
}
