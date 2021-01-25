import 'package:flutter/material.dart';
import 'package:idea_man/FullDetails.dart';
import 'package:idea_man/models/Game.dart';
import 'package:idea_man/screens/SettingsScreen.dart';
import 'package:idea_man/screens/goalStat.dart';
import 'package:idea_man/screens/teamStat.dart';
import 'package:idea_man/widget/MyBtn.dart';

import '../DetailsScreen.dart';
import 'matchTitle.dart';

Widget PageBody(List<Game> allmatches  , Animation<double> animationTypeBottom , Function onPressed , BuildContext context){
  return Column(
    children:[
      MyBtn(
        btn_color:Colors.blue,
        btn_string:"CLick To Select Time",
        onPressed:(){
          Navigator.of(context).push(MaterialPageRoute(builder: (context){
            return SettingsScreen();
            //return Details(game:allmatches[index]);
          }));
        },
        text_color:Colors.white,
      ),
      Expanded(
        flex:2,
        child: GestureDetector(
          onTap: (){
            onPressed;
          },
          child: Container(
            child:Padding(
             padding: EdgeInsets.symmetric(horizontal: 18.0 ,vertical: 24.0),
              child:Row(
               mainAxisAlignment:MainAxisAlignment.center,
               crossAxisAlignment:CrossAxisAlignment.center,
               children:[
                 teamStat("Home Team",allmatches[0].links.homePreview,allmatches[0].homeTeamName),
                 goalStat(90,allmatches[0].linescore.r.home  ,allmatches[0].linescore.r.away ),
                 teamStat("Visitor Team ",allmatches[0].links.awayPreview,allmatches[0].awayTeamName),
               ],
              ),
            ),
          ),
        ),
      ),
      Expanded(
        flex:5,
        child: Stack(
          children:[
            Container(
              width:double.infinity,
              decoration:BoxDecoration(
                  color:Color(0xFF4373D9),
                  borderRadius:BorderRadius.only(
                    topLeft:Radius.circular(40.0),
                    topRight:Radius.circular(40.0),
                  )
              ),
              child:Padding(
                padding:EdgeInsets.all(16.0),
                child:Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  crossAxisAlignment:CrossAxisAlignment.center,
                  children:[
                    Text("MATCHES" , style: TextStyle(
                      color:Colors.white,
                      fontSize:24.0,
                    )
                    ),
                    Expanded(
                        child:ListView.builder(
                            itemCount:allmatches.length,
                            itemBuilder:( context,index){
                              return InkWell(
                                  onTap:(){
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                      return FullDetails(game:allmatches[index]);
                                      //return Details(game:allmatches[index]);
                                    }));
                                  },
                                  child:matchTitle(allmatches[index])
                              );
                            }
                        )
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    ],
  );
}

int convertToInt(double number_double){
  double multiplier = .5;
  return (multiplier * number_double).round();
}