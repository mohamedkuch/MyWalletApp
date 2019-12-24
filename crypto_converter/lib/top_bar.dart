import 'package:flutter/material.dart';

class TopBar extends StatefulWidget {



  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 1,
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
            flex: 3,
            child: SizedBox(),
          ),
          Expanded(
            flex: 1,
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
      );
    
    
  }
}