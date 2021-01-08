import "package:flutter/material.dart";
import "package:share/share.dart";

class ButtonRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 0),
      child: Row(
        children: [
          _buildButtonRow(
              icon: Icon(
                Icons.call,
                color: Colors.white,
              ),
              data: "CALL"),
          _buildButtonRow(
              icon: Icon(
                Icons.near_me,
                color: Colors.white,
              ),
              data: "ROUTE"),
          Column(
            children: [
              FloatingActionButton(
                onPressed: () => Share.share(
                    "Look at this, Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese"),
                child: Icon(Icons.share),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "SHARE",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    );
  }

  _buildButtonRow({Widget icon, String data}) {
    return Column(
      children: [
        FloatingActionButton(
          onPressed: null,
          child: icon,
        ),
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Text(
            data,
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
