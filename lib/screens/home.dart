import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:idea_man/screens/PageBody.dart';
import 'package:idea_man/screens/SettingsScreen.dart';
import 'package:idea_man/utils/data.dart';
import 'package:idea_man/widget/MyBtn.dart';

import '../api_manager.dart';

class SoccerApp extends StatefulWidget{

  SoccerApp({
  this.day = "30",
  this.month = "09",
  this.year = "2015",
  });

  String day;
  String month;
  String year;

  @override
  State<StatefulWidget> createState() {
    return SoccerAppState();
  }
}

class SoccerAppState extends State<SoccerApp> with TickerProviderStateMixin{


  AnimationController animationbottom;
  Animation<double> animationTypeBottom;

  bool isAnimationCompleted = false;

  @override
  void initState(){

    animationbottom = AnimationController(vsync:this,duration:Duration(seconds:5));
    animationTypeBottom = Tween<double>(begin:1000, end:10).animate(CurvedAnimation(parent:animationbottom , curve:Curves.easeIn));
  }

  animationInit(){
    if(isAnimationCompleted){
      animationbottom.reverse();
      isAnimationCompleted = false;
    }else{

      animationbottom.forward();
      isAnimationCompleted = true;
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:primaryColor,
      appBar: AppBar(
        backgroundColor:primaryColor,
        elevation:0.0,
        title:Text(
          "SOCCERBOARD",
           style:TextStyle(
               color:Colors.black87,
               fontWeight:FontWeight.bold,
               fontFamily: "Montserrat"
           ),
        ) ,
        centerTitle:true,
      ),
      body:AnimatedBuilder(
        animation:animationbottom,
       builder:(BuildContext context , Widget child){
        return  FutureBuilder(
         future:FootballService.getListTodayMatches(widget.year,widget.month, widget.day),//Here we will call our getData() method,
         builder:(BuildContext context , AsyncSnapshot snapshot){
         if(snapshot.hasData){
         return PageBody(snapshot.data,animationTypeBottom,animationInit() ,context);
         }else{
         return Center(
         child: Column(
         mainAxisAlignment:MainAxisAlignment.center,
         children: [
           Container(
             margin:EdgeInsets.only(bottom:20),
             child: MyBtn(
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
           ),
         Center(
         child:CircularProgressIndicator(),
         ),
         Text(
         "No Data Currently",
         style:TextStyle(
         color:Colors.black87,
         fontWeight:FontWeight.bold,
         fontFamily: "Montserrat"
         ),
         )
         ],
         ),
         );
         }
         },
         );
       }
      ),
    );
  }


}