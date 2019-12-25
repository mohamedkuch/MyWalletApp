import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.02),
      child: Column(
        children: <Widget>[
          Container(
            child: SizedBox(),
            height: MediaQuery.of(context).padding.top,
          ),
          Expanded(
            child: IconButton(
              icon: Icon(
                Icons.info_outline,
                size: 35,
              ),
              onPressed: () {},
              color: Theme.of(context).accentColor,
            ),
          ),
        ],
      ),
    );
  }
}
