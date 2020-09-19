import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';
import 'grid.dart';

class GridItem extends StatefulWidget {
  counter _counter;
  GridItem(this._counter);
  @override
  _GridItemState createState() => _GridItemState();
}

class _GridItemState extends State<GridItem> {
  bool isSelected = false;
  String msg = "Don't touch me";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
          if (widget._counter.count == 1) msg = "No.";
          if (widget._counter.count == 2) msg = "I'm warning you!";
          if (widget._counter.count == 3) msg = "May you step on poop";
          if (widget._counter.count == 4) msg = "DUDE! ARE YOU KIDDING ME?!";
          if (widget._counter.count == 5) msg = "That's it.";
          if (widget._counter.count > 5) Vibration.vibrate(duration: 50);

          widget._counter.count += 1;
        });
      },
      child: Stack(
        children: <Widget>[
          Container(color: Colors.black),
          widget._counter.count <= 6
              ? (isSelected
                  ? Text(
                      msg,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    )
                  : Container())
              : Image.asset(
                  'assets/poop.jpeg',
                  fit: BoxFit.fill,
                )
        ],
      ),
    );
  }
}
