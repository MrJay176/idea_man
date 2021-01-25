import 'package:flutter/material.dart';

Widget teamStat(String team , String logoUrl , String teamName){
  return Expanded(
      child:Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children:[
          FittedBox(
            child: Text(
             team,
              textAlign:TextAlign.center,
              style:TextStyle(
                  fontFamily:"Montserrat",
                  fontWeight:FontWeight.bold
             ),
            ),
          ),
          SizedBox(
            height:10.0,
          ),
          Text(
            teamName,
            textAlign:TextAlign.center,
            style:TextStyle(
                fontFamily:"Montserrat",
                fontWeight:FontWeight.bold
            ),
          ),
        ],
      )
  );
}