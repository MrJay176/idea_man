import 'package:flutter/material.dart';
import 'package:idea_man/widget/MyBtn.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Colorss.dart';
import 'AppBarr.dart';
import 'TextFieldd.dart';
import 'home.dart';

class SettingsScreenBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SetttingsScreenBodyState();
  }
}

class SetttingsScreenBodyState extends State<SettingsScreenBody> {

  String day;
  String year;
  String month;
  TextEditingController _controllerDay;
  TextEditingController _controllerYear;
  TextEditingController _controllerMonth;

  @override
  initState(){

    _controllerDay = TextEditingController();
    _controllerYear = TextEditingController();
    _controllerMonth = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomLeft,
                  colors: [Colorss().color_top, Colorss().color_bottom])),
          child: Column(
            children: [
              AppBarr(
                title: "Choose Date For Query",
                background_color: Colorss().color_top,
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomLeft,
                        colors: [Colorss().color_top, Colorss().color_bottom])),
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FittedBox(
                        child: Text(
                          "Choose Date For Api Query",
                          style: TextStyle(
                              fontSize: 27.0,
                              color: Colorss().color_textField,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      FittedBox(
                        child: Text(
                          "Select the right date in format YEAR:2015 , DAY:01 ,MONTH:05",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Colorss().color_textField,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      Container(
                        height: 8.0,
                        width: 50.0,
                        margin: EdgeInsets.only(top: 10.0),
                        color: Colorss().color_intro,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(5, 10.0, 5, 5),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Container(
                                  child: TextFieldd(
                                      controller:_controllerYear,
                                      isPassword: false,
                                      label_text: "2015",
                                      hint_text: "Write Year",
                                      distance_right: 2.0,
                                      borderColor: Colorss().text_color),
                                )),
                            Expanded(
                              flex: 1,
                              child: Container(
                                //margin: EdgeInsets.only(top: 104.0),
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      // color: Colorss().color_shadow,
                                      offset: Offset(0.0, 0.25),
                                      blurRadius: 5.0,
                                    )
                                  ],
                                ),
                                child: Center(
                                  child: FittedBox(
                                    child: Text(
                                      "Year",
                                      style:TextStyle(
                                        color:Colors.white,
                                        fontSize:30,
                                        fontWeight:FontWeight.bold
                                      ) ,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(5, 10.0, 5, 5),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Container(
                                  child: TextFieldd(
                                      controller:_controllerMonth,
                                      isPassword: false,
                                      label_text: "05",
                                      hint_text: "Write Month",
                                      distance_right: 2.0,
                                      borderColor: Colorss().text_color),
                                )),
                            Expanded(
                              flex: 1,
                              child: Container(
                                //margin: EdgeInsets.only(top: 104.0),
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      // color: Colorss().color_shadow,
                                      offset: Offset(0.0, 0.25),
                                      blurRadius: 5.0,
                                    )
                                  ],
                                ),
                                child: Center(
                                  child: FittedBox(
                                    child: Text(
                                      "Month",
                                      style:TextStyle(
                                          color:Colors.white,
                                          fontSize:30,
                                          fontWeight:FontWeight.bold
                                      ) ,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(5, 10.0, 5, 5),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Container(
                                  child: TextFieldd(
                                      controller:_controllerDay,
                                      isPassword: false,
                                      label_text: "25",
                                      hint_text: "Write Day",
                                      distance_right: 2.0,
                                      borderColor: Colorss().text_color),
                                )),
                            Expanded(
                              flex: 1,
                              child: Container(
                                //margin: EdgeInsets.only(top: 104.0),
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Colorss().color_one,
                                        Colorss().color_two,
                                        Colorss().color_three
                                      ]),
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      // color: Colorss().color_shadow,
                                      offset: Offset(0.0, 0.25),
                                      blurRadius: 5.0,
                                    )
                                  ],
                                ),
                                child: Center(
                                  child: FittedBox(
                                    child: Text(
                                      "Day",
                                      style:TextStyle(
                                          color:Colors.white,
                                          fontSize:30,
                                          fontWeight:FontWeight.bold
                                      ) ,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin:EdgeInsets.only(bottom:20),
                        child: MyBtn(
                          btn_color:Colors.blue,
                          btn_string:"PROCEED",
                          onPressed:() async {
                            day = _controllerDay.text;
                            month = _controllerMonth.text;
                            year = _controllerYear.text;

                            final pref = await SharedPreferences.getInstance();

                            pref.setString("day",day);
                            pref.setString("month",month);
                            pref.setString("year",year);

                            print("${pref.getString("day")}");
                            print("${pref.getString("month")}");
                            print("${pref.getString("year")}");



                            Navigator.of(context).push(MaterialPageRoute(builder: (context){
                              return SoccerApp(
                                day:pref.getString("day"),
                                month:pref.getString("month"),
                                year:pref.getString("year"),
                              );
                              //return Details(game:allmatches[index]);
                            }));
                          },
                          text_color:Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
