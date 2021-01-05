import "package:flutter/material.dart";

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "images/lake.jpg",
      width: 600,
      height: 340,
      fit: BoxFit.cover,
    );
  }
}
