import 'package:flutter/material.dart';
import 'package:idea_man/screens/DetailsBody.dart';
import 'package:idea_man/utils/data.dart';

import 'models/Game.dart';

class Details extends StatefulWidget{
  Details({
    this.game,
  });
  Game game;
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DetailsState();
  }

}

class DetailsState extends State<Details>{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        backgroundColor:primaryColor,
        body:DetailsBody(widget.game ,context),
      )
      );
  }

}
class DeatilsBody extends StatefulWidget{

  DeatilsBody({
    this.game
  });

  Game game;

  @override
  State<StatefulWidget> createState() {
    return DeatilsBodyState();
  }

}

class DeatilsBodyState extends State<DeatilsBody>{

  @override
  Widget build(BuildContext context) {

    return DetailsBody(widget.game ,context);
  }


}

