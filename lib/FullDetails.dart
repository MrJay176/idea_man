import 'package:flutter/material.dart';
import 'package:idea_man/screens/goalStat.dart';
import 'package:idea_man/screens/teamStat.dart';
import 'package:idea_man/utils/data.dart';
import 'package:idea_man/widget/WalletHeader.dart';

import 'models/E.dart';
import 'models/Game.dart';
import 'models/Pitcher.dart';

class FullDetails extends StatefulWidget{

  FullDetails({
    this.game,
  });

  Game game;

  @override
  State<StatefulWidget> createState() {
    return FullDetailsState();
  }

}

class FullDetailsState extends State<FullDetails>{

  List<E> inning;
  List<Pitcher> pitchers = List<Pitcher>();

  @override
  initState() {
    inning = widget.game.linescore.inning;
    addPitchers();
  }

  Future<void> addPitchers() async{
    pitchers.add(widget.game.winningPitcher);
    pitchers.add(widget.game.losingPitcher);

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        backgroundColor:primaryColor,
        body: SafeArea(
          child: Container(
            child:Column(
              children: [
                Container(
                  margin:EdgeInsets.only(top:10),
                  child:Text(
                      "Match Details",
                      style:TextStyle(
                          fontSize:23,
                          color:Colors.black,
                          fontWeight:FontWeight.bold
                      )
                  ),
                ),
                Expanded(
                  flex:2,
                  child:WalletHeader(
                      game:widget.game,
                      type:"first"
                  ),
               ),
                Expanded(
                  flex:1,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                       teamStat("Home  Team ", widget.game.links.homePreview, widget.game.homeTeamName),
                            goalStat(90, widget.game.linescore.r.home, widget.game.linescore.r.away),
                            teamStat(
                                "Away Team ", widget.game.links.awayPreview, widget.game.awayTeamName),
                    ],
                  ),
                ),


                Expanded(
                  flex:4,
    child:Container(
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
    Text("INSIGHTS",style:TextStyle(
    color:Colors.white,fontFamily:"Montserrat",fontSize:24.0,
    )
    ),
    Expanded(
    child:ListView.builder(
    itemCount:pitchers.length,
    itemBuilder:( context,index){
    return GestureDetector(
    onTap:(){
    // Navigator.of(context).push(MaterialPageRoute(builder: (context){
    // return FullDetails(game:allmatches[index]);
    // //return Details(game:allmatches[index]);
    // }));
    },
    child:Expanded(
      child: Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children:[
          Container(
            margin:EdgeInsets.only(top:10),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children: [
                FittedBox(
                  child: Text(
                      index==1?"Winning Pitcher":"Losing Pitcher",
                      style:TextStyle(

                          fontFamily:"Montserrat",
                          color:index==1?Colors.green:Colors.red,
                          fontWeight:FontWeight.bold
                      )
                  ),
                ),
                FittedBox(
                  child: Text(
                      "${pitchers[index].first} ${pitchers[index].last} ",
                      style:TextStyle(

                          color:Colors.black,
                          fontFamily:"Montserrat",
                          fontWeight:FontWeight.bold
                      )
                  ),
                )
              ],
            ),
          ),
          Container(
            margin:EdgeInsets.only(top:10),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children:[
                FittedBox(
                  child: Text(
                      "Number Of Wins:",
                      style:TextStyle(

                          color:primaryColor,
                          fontFamily:"Montserrat",
                          fontWeight:FontWeight.bold
                      )
                  ),
                ),
                FittedBox(
                  child: Text(
                      "${pitchers[index].wins} and ${pitchers[index].losses} Losses ",
                      style:TextStyle(

                          fontFamily:"Montserrat",
                          color:Colors.black,
                          fontWeight:FontWeight.bold
                      )
                  ),
                )
              ],
            ),
          ),
          Container(
            margin:EdgeInsets.only(top:10),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children:[
                FittedBox(
                  child: Text(
                      "Number Of Saves:",
                      style:TextStyle(

                          fontFamily:"Montserrat",
                          color:primaryColor,
                          fontWeight:FontWeight.bold
                      )
                  ),
                ),
                FittedBox(
                  child: Text(
                      "${pitchers[index].saves} Saves Made ",
                      style:TextStyle(

                          fontFamily:"Montserrat",
                          color:Colors.black,
                          fontWeight:FontWeight.bold
                      )
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    )
    );
    }
    )
    )
    ],
    ),
    ),
    ),
                ),
              ],

            ),
          ),
        ),
      ),
    );
  }

}
