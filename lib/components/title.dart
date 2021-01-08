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
  bool _isFavorite = false;
  int _favoriteCount = 40;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            child: IconButton(
                icon:
                    (_isFavorite ? Icon(Icons.star) : Icon(Icons.star_border)),
                color: Colors.red,
                onPressed: _toggleFavorite)),
        Container(
          child: Text("$_favoriteCount"),
        )
      ],
    );
  }

  _toggleFavorite() {
    setState(() {
      if (_isFavorite) {
        _favoriteCount -= 1;
        _isFavorite = false;
      } else {
        _favoriteCount += 1;
        _isFavorite = true;
      }
    });
  }
}
