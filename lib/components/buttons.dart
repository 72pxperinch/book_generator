import 'package:flutter/material.dart';

Widget buildButton(String text, {VoidCallback? onPressed}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        minimumSize: Size(double.infinity, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      onPressed: onPressed ?? () {},
      child: Text(
        text,
        style: TextStyle(
          fontFamily: "Geomanist",
          fontSize: 14,
          color: Color(0xFF43B888),
        ),
      ),
    ),
  );
}

Widget buildGreenButton(String text, {VoidCallback? onPressed}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF43B888),
        minimumSize: Size(double.infinity, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      onPressed: onPressed ?? () {},
      child: Text(
        text,
        style: TextStyle(
          fontFamily: "Geomanist",
          fontSize: 14,
          color: Colors.white,
        ),
      ),
    ),
  );
}

Widget buildIconGreenButton(String text, String icon, {VoidCallback? onPressed}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF43B888),
        minimumSize: Size(double.infinity, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      onPressed: onPressed ?? () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(icon, width: 15, height: 15,),
          SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(
              fontFamily: "Geomanist",
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );
}
