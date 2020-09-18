import 'package:flutter/material.dart';

class GridItem extends StatefulWidget {
  GridItem();
  @override
  _GridItemState createState() => _GridItemState();
}

class _GridItemState extends State<GridItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Stack(
        children: <Widget>[
          Container(color: Colors.black),
          isSelected
              ? Text(
                  "here",
                  style: TextStyle(color: Colors.white),
                )
              : Container()
        ],
      ),
    );
  }
}
