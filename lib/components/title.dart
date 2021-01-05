import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Oeschinen Lake Campground",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                "Kandersteg, Switzerland",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
          StarWidget()
        ],
      ),
    );
  }
}

class StarWidget extends StatefulWidget {
  @override
  _StateStarWidget createState() => _StateStarWidget();
}

class _StateStarWidget extends State {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.only(right: 5),
          child: Icon(Icons.star),
        ),
        Container(
          child: Text("41"),
        )
      ],
    );
  }
}
