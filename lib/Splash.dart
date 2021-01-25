import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'logic.dart';

class Splash extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
       body:SplashBody(),
      ),
    );
  }
}

class SplashBody extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SplashState();
  }

}

class SplashState extends State<SplashBody>{
  Logic logic;

  checkTimer()async{
     logic.waitSec(time:5);
  }

  @override
  Widget build(BuildContext context) {
    logic = Logic(context);
    checkTimer();
    return Container(
      color:Colors.blue,
      width: MediaQuery.of(context).size.width,
      height:MediaQuery.of(context).size.height,
      child:Center(
        child:Text(
          'SoccerApp',
           style:TextStyle(
             fontFamily:"Montserrat",
             fontSize:25.0,
             color:Colors.white,
             fontWeight:FontWeight.bold
           )
           //style:Theme.of(context).textTheme.bodyText1,
        )
      ) ,
    );
  }
}


