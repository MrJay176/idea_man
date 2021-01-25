import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Colorss.dart';
import 'home.dart';

class AppBarr extends StatefulWidget {
  AppBarr({this.title, this.background_color});

  String title;
  Color background_color;

  @override
  _AppBarState createState() => _AppBarState();
}

class _AppBarState extends State<AppBarr> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: widget.background_color),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50.0,
          ),
          Positioned(
            left: 1,
            child: GestureDetector(
              onTap: (){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return SoccerApp();
                }));
              },
              child: Container(
                height: 50,
                child: Center(
                  child: Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50.0,
              child: Center(
                child: Text(
                  widget.title,
                  style: TextStyle(
                      fontSize: 13.0,
                      color: Colorss().color_textField,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
