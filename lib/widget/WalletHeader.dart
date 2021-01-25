import 'dart:async';

import 'package:flutter/material.dart';
import 'package:idea_man/models/E.dart';
import 'package:idea_man/models/Game.dart';
import 'package:idea_man/models/Pitcher.dart';
import 'package:idea_man/utils/data.dart';

class WalletHeader extends StatefulWidget {

  WalletHeader({
    this.game_directory,
    this.game,
    this.type,
  });

  String game_directory;
  Game game;
  String type;

  @override
  _WalletHeaderState createState() => _WalletHeaderState();

}

class _WalletHeaderState extends State<WalletHeader> {

  ScrollController _scrollController = new ScrollController();
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

    Timer(Duration(seconds:1 ),()=>
        _scrollController.animateTo(_scrollController.offset+500, duration:Duration(seconds:3 ), curve:Curves.easeIn));

    return Container(
      child:Row(
        children:[
          Expanded(
              child:ListView.builder(
                  controller:_scrollController,
                  shrinkWrap:true,
                  itemCount: widget.type == "first"?inning.length:pitchers.length,
                  scrollDirection:Axis.horizontal,
                  itemBuilder:(context , i){
                    return Container(
                      width:MediaQuery.of(context).size.width,
                      margin:EdgeInsets.symmetric(horizontal:20 , vertical:40),
                      decoration:BoxDecoration(
                          boxShadow:customBoxShadow,
                          color:primaryColor,
                      ),
                      child: Stack(
                        children:[
                          Positioned.fill(
                              left:-300,
                              top:-100,
                              bottom:-100,
                              child:Container(
                                decoration:BoxDecoration(
                                    boxShadow:customBoxShadow,
                                    shape: BoxShape.circle,
                                    color:Colors.white38
                                ),
                              )
                          ),
                          Positioned.fill(
                              top:-150,
                              bottom:-200,
                              child:Container(
                                decoration:BoxDecoration(
                                    boxShadow:customBoxShadow,
                                    shape: BoxShape.circle,
                                  color:Colors.white38
                                ),
                              )
                          ),
                          Container(
                            child:widget.type == "first"?Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                Text(
                                    "Innings Of Game",
                                    style:TextStyle(
                                        fontSize:18,
                                        color:Colors.black,
                                        fontWeight:FontWeight.bold
                                    )
                                ),
                                Row(
                                  children:[
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children:[
                                          FittedBox(
                                            child: Text(
                                                "Home",
                                                style:TextStyle(
                                                    fontSize:16,
                                                    color:Colors.black,
                                                    fontWeight:FontWeight.bold
                                                )
                                            ),
                                          ),
                                          FittedBox(
                                            child: Text(
                                                "${inning[i].home}",
                                                style:TextStyle(
                                                    fontSize:16,
                                                    color:Colors.black,
                                                    fontWeight:FontWeight.bold
                                                )
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children:[
                                          FittedBox(
                                            child: Text(
                                                "Away",
                                                style:TextStyle(
                                                    fontSize:16,
                                                    color:Colors.black,
                                                    fontWeight:FontWeight.bold
                                                )
                                            ),
                                          ),
                                          FittedBox(
                                            child: Text(
                                                "${inning[i].away}",
                                                style:TextStyle(
                                                    fontSize:16,
                                                    color:Colors.black,
                                                    fontWeight:FontWeight.bold
                                                )
                                            ),
                                          ),
                                        ],
                                      ),
                                    )

                                  ],
                                )
                              ],
                            ):Column(
                              mainAxisAlignment:MainAxisAlignment.center,
                              children:[
                                Row(
                                  mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      i==1?"Winning Pitcher":"Losing Pitcher",
                                        style:TextStyle(
                                            fontSize:25,
                                            color:Colors.black,
                                            fontWeight:FontWeight.bold
                                        )
                                    ),
                                    Text(
                                      "${pitchers[i].first} ${pitchers[i].last} ",
                                        style:TextStyle(
                                            fontSize:20,
                                            color:Colors.black,
                                            fontWeight:FontWeight.bold
                                        )
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                  children:[
                                    Text(
                                      "Number Of Wins:",
                                        style:TextStyle(
                                            fontSize:20,
                                            color:Colors.black,
                                            fontWeight:FontWeight.bold
                                        )
                                    ),
                                    Text(
                                      "${pitchers[i].wins} and ${pitchers[i].losses} Losses ",
                                        style:TextStyle(
                                            fontSize:20,
                                            color:Colors.black,
                                            fontWeight:FontWeight.bold
                                        )
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                  children:[
                                    Text(
                                      "Number Of Saves:",
                                        style:TextStyle(
                                            fontSize:20,
                                            color:Colors.black,
                                            fontWeight:FontWeight.bold
                                        )
                                    ),
                                    Text(
                                      "${pitchers[i].saves} Saves Made ",
                                        style:TextStyle(
                                            fontSize:20,
                                            color:Colors.black,
                                            fontWeight:FontWeight.bold
                                        )
                                    )
                                  ],
                                ),
                              ],
                            )
                          )
                        ],
                      ),
                    );
                  }
              )
          ),
        ],
      ),

    );
  }
}
