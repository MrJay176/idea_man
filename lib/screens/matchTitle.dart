import 'package:flutter/material.dart';
import 'package:idea_man/models/Game.dart';

Widget matchTitle(Game game){
  return Container(
    margin:EdgeInsets.symmetric(vertical:12.0),
    child:Row(
      mainAxisAlignment:MainAxisAlignment.center,
      crossAxisAlignment:CrossAxisAlignment.center,
      children:[
        Expanded(
            child:Text(
              "${game.homeTeamName}",
              textAlign:TextAlign.center,
              style:TextStyle(
                fontFamily:"Montserrat",
                color:Colors.white,
               fontSize:13.0,
              ),
            )
        ),
        Image.network(
          "${game.links.homePreview}",
          //match,
          width:39.0,
        ),
        Expanded(
            child:Text(
                "${game.linescore.r.home} - ${game.linescore.r.away}",
                textAlign:TextAlign.center,
                style:TextStyle(
                 color:Colors.white,
                    fontFamily:"Montserrat",
                    fontSize:16.0
                ),
            )
        ),
        Image.network(
          " ${game.links.awayPreview}",
          //match,
          width:39.0,
        ),

        Expanded(
            child:Text(
              "${game.awayTeamName}",
              textAlign:TextAlign.center,
              style:TextStyle(
                fontFamily:"Montserrat",
                color:Colors.white,
                fontSize:13.0,
              ),
            )
        ),
      ],
    ),
  );
}