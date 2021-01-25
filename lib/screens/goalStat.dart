import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget goalStat(int expandedTime , String homeGoal , String awayGoal ){

  return Expanded(
    child:Column(
      mainAxisAlignment:MainAxisAlignment.center,
      crossAxisAlignment:CrossAxisAlignment.center,
      children: [
        FittedBox(
          child: Text(
            "${expandedTime}",
            style:TextStyle(
                fontWeight:FontWeight.bold,
                color:Colors.white,
                fontFamily: "Montserrat"
            ),
          ),
        ),
        Expanded(
            child:Center(
              child:FittedBox(
                child: Text(
                  "${homeGoal} - ${awayGoal}",
                  textAlign:TextAlign.center,
                  style:TextStyle(
                      fontWeight:FontWeight.bold,
                      color:Colors.white,
                      fontFamily: "Montserrat"
                  ),
                ),
              )
            )
        )
      ],
    )
  );
}