import 'package:flutter/material.dart';
import 'package:muslimdatingapp/utils/color_resources.dart';

appbarWidget({required String title}) {
  return AppBar(
      centerTitle: true,
      elevation: 0,

      leading: Image.asset("assets/images/png/back.png"),
      backgroundColor: Colors.white,
      title: Text(title), titleTextStyle: TextStyle(
      color: Color(0xff000000),
      fontWeight: FontWeight.w500,
      fontSize: 25,
      fontFamily: "Ubuntu"
  ));
}
PinkappbarWidget(BuildContext context,
    {required String title, }
    ) {
  return AppBar(
      centerTitle: true,
      elevation: 0,

      leading: InkWell(
        onTap: (){
          Navigator.pop(context);
        },
          child: Padding(
              padding: EdgeInsets.only(top: 10,bottom: 0),
              child: Image.asset("assets/images/png/back.png"))),
      backgroundColor: Colors.white,

      title: Padding(
        padding: EdgeInsets.only(top: 10,bottom: 0),
          child: Text(title)), titleTextStyle: TextStyle(
      color: Color(0xffF03C67),
      fontWeight: FontWeight.w500,
      fontSize: 31,
      fontFamily: "Ubuntu"
  ));
}
Text700({required String title}){
  Text(title,style: TextStyle( fontWeight: FontWeight.w700,
      fontSize: 12,
      fontFamily: "Ubuntu"),);

}
