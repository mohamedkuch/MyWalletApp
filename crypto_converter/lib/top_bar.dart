import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: SizedBox(),
          height: MediaQuery.of(context).padding.top,
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: IconButton(
                  icon: Icon(
                    Icons.sort,
                    size: 28,
                  ),
                  onPressed: () {},
                  color: Theme.of(context).accentColor,
                ),
              ),
              Expanded(
                flex: 7,
                child: SizedBox(),
              ),
              Expanded(
                flex: 2,
                child: IconButton(
                  icon: Icon(
                    Icons.brightness_6,
                    size: 22,
                  ),
                  onPressed: () {},
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
