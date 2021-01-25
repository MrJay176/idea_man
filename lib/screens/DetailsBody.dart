import 'package:flutter/material.dart';
import 'package:idea_man/models/Game.dart';
import 'package:idea_man/screens/goalStat.dart';
import 'package:idea_man/screens/teamStat.dart';
import 'package:idea_man/widget/WalletHeader.dart';


Widget DetailsBody(Game game , BuildContext contextt) {
    return Container(
      width:MediaQuery.of(contextt).size.width,
      height:MediaQuery.of(contextt).size.height,
      child: Container(
        color:Colors.black,
        child: Column(
          children: [
            Container(
              width:MediaQuery.of(contextt).size.width,
              height:MediaQuery.of(contextt).size.height,
              margin:EdgeInsets.symmetric(horizontal:20),
              alignment:Alignment.topLeft,
              child: Text("Select Card" ,
                style:TextStyle(
                    fontSize:16,
                    color:Colors.black,
                    fontWeight:FontWeight.bold
                ) ,
              ),
            ),
            //WalletHeader(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                teamStat(
                    "Local Team ", game.links.homePreview, game.homeTeamName),
                goalStat(90, game.linescore.r.home, game.linescore.r.away),
                teamStat(
                    "Visitor Team ", game.links.awayPreview, game.awayTeamName),
              ],
            ),
            Container(
              margin:EdgeInsets.symmetric(horizontal:20),
              alignment:Alignment.topLeft,
              child: Text(
                "Select Card" ,
                style:TextStyle(
                    fontSize:16,
                    fontFamily:"Montserrat",
                    fontWeight:FontWeight.bold
                ) ,
              ),
            ),
            //WalletHeader(),
          ],
        ),
      ),
    );
  }
