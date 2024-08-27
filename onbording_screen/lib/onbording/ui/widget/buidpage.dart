 import 'package:flutter/material.dart';

Widget buildPage(
      {required String imagePath, String? title, String? description}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imagePath),
        if (title != null) ...[
          SizedBox(height: 75),
          Text(
            title,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
        if (description != null) ...[
          SizedBox(height: 5),
          Text(
            description,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
              // textAlign: TextAlign.center,
            ),
          ),
        ],
      ],
    );
  }

